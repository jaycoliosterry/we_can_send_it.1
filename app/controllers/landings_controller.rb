class LandingsController < ApplicationController
    def index
    	@orders = Order.all
    end
	def greet(name)
  		puts "Hi there " + name
	end
end
