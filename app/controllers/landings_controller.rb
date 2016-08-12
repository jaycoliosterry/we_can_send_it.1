class LandingsController < ApplicationController
  def index
  end
  def index
  	@orders = Order.all
  end
end
