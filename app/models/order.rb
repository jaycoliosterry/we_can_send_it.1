class Order < ActiveRecord::Base
  belongs_to :invoice_line_item
  belongs_to :user
  has_and_belongs_to_many :invoices
  has_many :parcels
  has_many :stocks
end
