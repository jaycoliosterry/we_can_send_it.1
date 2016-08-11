class CreateExpressCourierPrices < ActiveRecord::Migration
  def change
    create_table :express_courier_prices do |t|

      t.timestamps
    end
  end
end
