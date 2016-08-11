class InvoiceLineItem < ActiveRecord::Base
  has_one :company
end
