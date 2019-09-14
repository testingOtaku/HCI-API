class UsersController < ApplicationController
  before_action :authorize_request, only: :update
  before_action :set_user, only: [:show, :update]

  # GET /users
  def index
    @users = User.where(user_params).all

    render json: @users, except: :password_digest, include: :role
  end

  # GET /users/1
  def show
    render json: @user, except: :password_digest, include: :role
  end

  # POST /users
  def create
    @user = User.new({
      name: user_params[:name],
      username: user_params[:username],
      password: user_params[:password],
      password_confirmation: user_params[:password_confirmation] || user_params[:password],
      is_enabled: true,
      role_id: 1
    })

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @current_user.id != @user.id && @current_user.role_id != 3
      not_found
    elsif @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.permit(:name, :username, :password, :password_confirmation, :is_enabled, :role_id)
    end
end
