class InvoiceLineItem < ActiveRecord::Base
  has_one :company
  has_one :invoice
  has_one :order
end
