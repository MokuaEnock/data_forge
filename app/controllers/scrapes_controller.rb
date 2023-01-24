class ScrapesController < ApplicationController
  # require "open-uri"
  # require "nokogiri"

  # def scrape
  #   doc = Nokogiri.HTMl(open(params[:scrape]))
  # end

  def index
    render json: Scrape.all
  end

  def create
    scrape = Scrape.create(scrape_params)
    render json: scrape
  end

  private

  def scrape_params
    params.permit(:scrape, :pages)
  end
end
