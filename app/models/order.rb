class Order < ActiveRecord::Base
  require 'easypost'
  belongs_to :invoice_line_item
  belongs_to :user
  has_and_belongs_to_many :invoices
  has_many :parcels
end
