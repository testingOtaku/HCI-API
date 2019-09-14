class AreasController < ApplicationController
  before_action :authorize_request, except: [:index, :show]
  before_action :set_area, only: :show

  # GET /areas
  def index
    @areas = Area.where(area_params).all

    render json: @areas, include: :city
  end

  # GET /areas/1
  def show
    render json: @area, include: :city
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area
      @area = Area.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def area_params
      params.permit(:name)
    end
end
