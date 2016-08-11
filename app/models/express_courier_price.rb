class ExpressCourierPrice < ActiveRecord::Base
require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      express_courier_price_controller_hash = row.to_hash # exclude the price field
      express_courier_prices = ExpressCourierPrice.where(id: express_courier_price_controller_hash["id"])

      if express_courier_prices.count == 1
        express_courier_prices.first.update_attributes(express_courier_price_controller_hash)
      else
        ExpressCourierPrice.create!(express_courier_price_controller_hash)
      end # end if !express_courier_prices.nil?
    end # end CSV.foreach
  end # end self.import(file)
end # end class

