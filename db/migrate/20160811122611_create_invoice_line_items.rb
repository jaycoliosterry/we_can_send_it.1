class CreateInvoiceLineItems < ActiveRecord::Migration
  def change
    create_table :invoice_line_items do |t|
      t.text :description
      t.decimal :price
      t.decimal :tax_percentage

      t.timestamps
    end
  end
end
