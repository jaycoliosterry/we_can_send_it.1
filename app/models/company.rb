class Company < ActiveRecord::Base
  belongs_to :user
  belongs_to :invoice_line_item
end
