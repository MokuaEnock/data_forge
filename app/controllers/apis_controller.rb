class ApisController < ApplicationController
  def index
    render json: Api.all
  end

  def create
    a = Api.create(a_params)
    render json: a
  end

  def show
    a = Api.find(params[:id])
    render json: a
  end

  private

  def a_params
    params.permit(:name, :link)
  end
end
