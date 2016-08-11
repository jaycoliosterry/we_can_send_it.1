class Invoice < ActiveRecord::Base
  belongs_to :company
  belongs_to :invoice_line_item
  has_one :company
  has_and_belongs_to_many :orders
end
