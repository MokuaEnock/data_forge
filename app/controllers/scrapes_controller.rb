class ScrapesController < ApplicationController
  def index
    render json: Scrape.all
  end

  def create
    s = Scrape.create(s_params)
    render json: s
  end

  def show
    
  end

  private

  def s_params
    params.permit(:link, :pages)
  end
end
