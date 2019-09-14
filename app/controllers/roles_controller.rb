class RolesController < ApplicationController
  before_action :authorize_request, except: [:index, :show]
  before_action :set_role, only: :show

  # GET /roles
  def index
    @roles = Role.where(role_params).all

    render json: @roles
  end

  # GET /roles/1
  def show
    render json: @role
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role
      @role = Role.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def role_params
      params.permit(:name)
    end
end
