class ScrapesController < ApplicationController

  require 'mechanize'

  def index
    render json: Scrape.all
  end

  def create
    s = Scrape.create(s_params)
    render json: s
  end

  def show
    s = Scrape.find(params[:id])
    render json: s
  end

  def scrape_title
    agent = Mechanize.new
    page = agent.get("#")
  end
  private

  def s_params
    params.permit(:link, :pages)
  end
end
