class BranchesController < ApplicationController
  before_action :authorize_request, except: [:index, :show]
  before_action :set_branch, only: [:show, :destroy]

  # GET /branches
  def index
    @branches = Branch.where(branch_params).all

    render json: @branches, include: :restaurant
  end

  # GET /branches/1
  def show
    render json: @branch, include: :restaurant
  end

  # POST /branches
  def create
    @branch = Branch.new(branch_params)

    if @branch.save
      render json: @branch, status: :created, location: @branch
    else
      render json: @branch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /branches/1
  def destroy
    @branch.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_branch
      @branch = Branch.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def branch_params
      params.permit(:restaurant_id, :address, :city_id, :area_id)
    end
end
