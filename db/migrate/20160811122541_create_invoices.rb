class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :company, index: true
      t.string :invoice_number
      t.date :issue_date
      t.date :due_date
      t.boolean :paid
      t.boolean :sales_tax_applicable
      t.boolean :emailed_to_client
      t.string :purchase_order_number
      t.references :invoice_line_item, index: true

      t.timestamps
    end
  end
end
