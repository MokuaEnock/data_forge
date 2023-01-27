class ScrapesController < ApplicationController
  require "mechanize"
  # https://www.newegg.com/Laptops-Notebooks/Category/ID-223

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
    page = agent.get("https://www.newegg.com/Laptops-Notebooks/Category/ID-223")
    div_tags = page.search("div")
    li_tags = page.search("li")
    body_tag = page.search("search")
    render json: body_tag
  end

  private

  def s_params
    params.permit(:link, :pages)
  end
end
