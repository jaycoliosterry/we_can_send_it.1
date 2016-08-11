class CreateStocksStockGroups < ActiveRecord::Migration
  def change
    create_table :stocks_stock_groups do |t|
      t.belongs_to :stock, index: true
      t.belongs_to :stock_group, index: true
    end
  end
end
