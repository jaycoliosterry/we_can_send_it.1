class Order < ActiveRecord::Base
  belongs_to :invoice_line_item
  belongs_to :user
end
