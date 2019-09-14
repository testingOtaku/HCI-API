class CitiesController < ApplicationController
  before_action :authorize_request, except: [:index, :show]
  before_action :set_city, only: :show

  # GET /cities
  def index
    @cities = City.where(city_params).all

    render json: @cities
  end

  # GET /cities/1
  def show
    render json: @city
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def city_params
      params.permit(:name)
    end
end
