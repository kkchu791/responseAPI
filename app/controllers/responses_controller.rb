class ResponsesController < ApplicationController
  def index
    responses = Response.all
    render json: responses
  end

  def show
    response = Response.find(params[:id])
    render json: response
  end

  def create
    response = Response.new(response_params)
    if response.save
      render json: response.lines, status: 201
    else
      render json: '400', status: 400
    end
  end

  def update
    response = Response.find(params[:id])
    if response.lines.first.update_attributes(line_params)
      render json: response.lines
    else
      render json: '400', status: 400
    end
  end

  def destroy
    response = Response.find(params[:id])
    response.destroy
    head 204
  end

  private

  def response_params
    params.permit(:reply)
  end
end
