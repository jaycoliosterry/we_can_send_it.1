class CreateEconomyCourierPrices < ActiveRecord::Migration
  def change
    create_table :economy_courier_prices do |t|

      t.timestamps
    end
  end
end
