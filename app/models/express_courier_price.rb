class ExpressCourierPrice < ActiveRecord::Base
require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      price_hash = row.to_hash # exclude the price field
      prices = Price.where(id: price_hash["id"])

      if prices.count == 1
        prices.first.update_attributes(price_hash)
      else
        Price.create!(price_hash)
      end # end if !prices.nil?
    end # end CSV.foreach
  end # end self.import(file)
end # end class

