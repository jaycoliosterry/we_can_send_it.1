class CreateStockGroups < ActiveRecord::Migration
  def change
    create_table :stock_groups do |t|
      t.string :stock_group_title
      t.text :stock_group_description
      t.references :company, index: true

      t.timestamps
    end
  end
end
