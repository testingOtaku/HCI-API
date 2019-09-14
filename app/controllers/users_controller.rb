class UsersController < ApplicationController
  before_action :authorize_request, only: [:create, :update]
  before_action :set_user, only: [:show, :update]

  # GET /users
  def index
    puts @current_user.name
    @users = User.where(user_params).all

    render json: @users, except: :password_digest, include: :role
  end

  # GET /users/1
  def show
    render json: @user, except: :password_digest, include: :role
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
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
      params.permit(:name, :username, :role_id)
    end
end
