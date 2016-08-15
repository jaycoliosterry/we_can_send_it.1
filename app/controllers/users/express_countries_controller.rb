class ExpressCountriesController < ApplicationController
  def index
    @express_countries = ExpressCountries.all
  end
end