class CreateParcels < ActiveRecord::Migration
  def change
    create_table :parcels do |t|
      t.references :order, index: true
      t.decimal :customer_shipment_cost_pre_tax
      t.boolean :taxable
      t.decimal :tax_rate
      t.decimal :tax
      t.decimal :customer_shipment_cost_with_tax
      t.string :parcel_items_and_quantity
      t.decimal :weight_of_parcel
      t.string :customs_short_declaration
      t.text :customs_long_description
      t.decimal :parcel_height
      t.decimal :parcel_length
      t.decimal :parcel_width
      t.integer :parcel_number_in_order
      t.decimal :internal_cost_of_parcel
      t.string :shipping_carrier

      t.timestamps
    end
  end
end
