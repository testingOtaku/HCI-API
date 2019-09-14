class ApplicationController < ActionController::API
	def not_found
		render json: { errors: [ "Unauthorized token." ]}, status: :unauthorized
	end
  
	def authorize_request
		@token = params.require('token')

		begin
			@decoded = JsonWebToken.decode(@token)
			@current_user = User.find(@decoded[:id])
			if !@current_user.is_enabled
				raise Exception
			end
		rescue ActiveRecord::RecordNotFound => e
			render json: { errors: e.message }, status: :unauthorized
		rescue JWT::DecodeError => e
			render json: { errors: e.message }, status: :unauthorized
		rescue Exception => e
			not_found
		end
	end
end
