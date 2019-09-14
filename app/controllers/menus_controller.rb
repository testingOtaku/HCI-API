class MenusController < ApplicationController
  before_action :authorize_request, except: [:index, :show]
  before_action :set_menu, only: [:show, :update]

  # GET /menus
  def index
    @menus = Menu.where(menu_params).all

    render json: @menus, include: :tag, through: :menutag
  end

  # GET /menus/1
  def show
    render json: @menu, include: :tag, through: :menutag
  end

  # POST /menus
  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      render json: @menu, status: :created, location: @menu
    else
      render json: @menu.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /menus/1
  def update
    if @menu.update(menu_params)
      render json: @menu
    else
      render json: @menu.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def menu_params
      params.permit(:title, :restaurant_id, :is_enabled, :is_special, :from, :to)
    end
end
