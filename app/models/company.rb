class Company < ActiveRecord::Base
  belongs_to :user
  belongs_to :invoice_line_item
  has_many :users
  has_many :addressbooks
end
