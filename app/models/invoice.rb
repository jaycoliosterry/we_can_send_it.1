class Invoice < ActiveRecord::Base
  belongs_to :company
  belongs_to :invoice_line_item
end
