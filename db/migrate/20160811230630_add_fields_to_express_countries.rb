class AddFieldsToExpressCountries < ActiveRecord::Migration
  def change
  	create_table :express_countries do |t|
    t.string :Country
    t.integer :Zones
    t.integer :Vat
end
  end
end
