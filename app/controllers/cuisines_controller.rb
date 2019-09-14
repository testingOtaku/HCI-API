class CuisinesController < ApplicationController
  before_action :authorize_request, except: [:index, :show]
  before_action :set_cuisine, only: :show

  # GET /cuisines
  def index
    @cuisines = Cuisine.where(cuisine_params).all

    render json: @cuisines
  end

  # GET /cuisines/1
  def show
    render json: @cuisine
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuisine
      @cuisine = Cuisine.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cuisine_params
      params.permit(:name)
    end
end
