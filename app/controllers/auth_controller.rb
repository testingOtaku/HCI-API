class AuthController < ApplicationController
	def index
		@user = User.find_by_username(auth_params[:username])
		if @user.authenticate(auth_params[:password])
			render json: {token: JsonWebToken.encode(id: @user.id, role_id: @user.role_id)}
		else
			render json: {}, status: :unauthorized
		end
	end 

	private
		# Only allow a trusted parameter "white list" through.
		def auth_params
			params.permit(:username, :password, :password_confirmation)
		end
end
