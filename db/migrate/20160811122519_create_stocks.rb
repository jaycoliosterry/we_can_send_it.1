class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.references :company, index: true
      t.boolean :mark_stock_as_to_be_destroyed
      t.string :title
      t.text :description
      t.string :client_reference_code
      t.decimal :height_in_cm
      t.decimal :width_in_cm
      t.decimal :length_in_cm
      t.string :paper_size
      t.string :number_of_pages
      t.decimal :weight_in_kg
      t.string :stock_image
      t.integer :quantity_currently_in_stock
      t.integer :total_ever_in_stock
      t.integer :total_ever_sent
      t.integer :total_damaged_or_destroyed
      t.references :parcel, index: true

      t.timestamps
    end
  end
end
