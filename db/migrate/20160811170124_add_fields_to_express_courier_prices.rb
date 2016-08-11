class AddFieldsToExpressCourierPrices < ActiveRecord::Migration
  def change
    add_column :express_courier_prices, :weight, :decimal
    add_column :express_courier_prices, :zone1, :decimal
    add_column :express_courier_prices, :zone2, :decimal
    add_column :express_courier_prices, :zone3, :decimal
    add_column :express_courier_prices, :zone4, :decimal
    add_column :express_courier_prices, :zone5, :decimal
    add_column :express_courier_prices, :zone6, :decimal
    add_column :express_courier_prices, :zone7, :decimal
    add_column :express_courier_prices, :zone8, :decimal
    add_column :express_courier_prices, :zone9, :decimal
    add_column :express_courier_prices, :zone10, :decimal
  end
end
