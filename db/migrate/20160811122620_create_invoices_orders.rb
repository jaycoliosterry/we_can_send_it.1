class CreateInvoicesOrders < ActiveRecord::Migration
  def change
    create_table :invoices_orders do |t|
      t.belongs_to :invoice, index: true
      t.belongs_to :order, index: true
    end
  end
end
