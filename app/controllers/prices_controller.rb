class PricesController < ApplicationController
  def index
    @prices = Price.all
  end

  def import
    Price.import(params[:file])
    redirect_to root_url, notice: "Prices imported."
  end
end