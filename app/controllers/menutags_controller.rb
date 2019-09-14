class MenutagsController < ApplicationController
  before_action :authorize_request, except: [:index, :show]
  before_action :set_menutag, only: [:show, :destroy]

  # GET /menutags
  def index
    @menutags = Menutag.where(menutag_params).all

    render json: @menutags
  end

  # GET /menutags/1
  def show
    render json: @menutag
  end

  # POST /menutags
  def create
    @menutag = Menutag.new(menutag_params)

    if @menutag.save
      render json: @menutag, status: :created, location: @menutag
    else
      render json: @menutag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /menutags/1
  def destroy
    @menutag.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menutag
      @menutag = Menutag.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def menutag_params
      params.permit(:menu_id, :tag_id)
    end
end
