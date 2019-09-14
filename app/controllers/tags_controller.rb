class TagsController < ApplicationController
  before_action :authorize_request, except: [:index, :show]
  before_action :set_tag, only: :show

  # GET /tags
  def index
    @tags = Tag.where(tag_params).all

    render json: @tags, include: :menu, through: :menutag
  end

  # GET /tags/1
  def show
    render json: @tag, include: :menu, through: :menutag
  end

  # POST /tags
  def create
    if @current_user.role_id == 1
      not_found
    end

    @tag = Tag.new(tag_params)

    if @tag.save
      render json: @tag, status: :created, location: @tag
    else
      render json: @tag.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = Tag.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tag_params
      params.permit(:name)
    end
end
