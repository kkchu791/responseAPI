class ResponsesController < ApplicationController
  before_action :ensure_current_user

  def index
    render json: Response.all, each_serializer: ResponseSerializer
  end

  def create
    Response.create(response_params)
  end

  def show
    render json: Response.where(id: params[:id]).first.to_json
  end

  private

  def response_params
    params.permit(:reply)
  end
end