class CreatePostalPrices < ActiveRecord::Migration
  def change
    create_table :postal_prices do |t|

      t.timestamps
    end
  end
end
