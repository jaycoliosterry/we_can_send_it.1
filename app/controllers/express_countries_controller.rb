class ExpressCountriesController < ApplicationController
  def index
    @express_countries = ExpressCountry.all
  end
end
