class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :invoice_line_item, index: true
      t.string :delivery_status
      t.text :customer_comments
      t.string :customer_uploaded_file
      t.boolean :send_confirmation_emails_to_recipients
      t.string :order_number
      t.references :user, index: true
      t.decimal :total_order_weight
      t.decimal :wcsi_total_order_cost
      t.decimal :customer_total_order_cost_pre_tax
      t.boolean :any_taxable_shipments
      t.decimal :total_tax_on_order
      t.decimal :customer_total_order_cost_with_tax

      t.timestamps
    end
  end
end
