class ExpressCourierPricesController < ApplicationController
  def index
    @express_courier_prices = ExpressCourierPrice.all
  end

  def import
    ExpressCourierPrice.import(params[:file])
    redirect_to root_url, notice: "Prices imported."
  end
end