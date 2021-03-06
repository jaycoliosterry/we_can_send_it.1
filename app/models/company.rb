class Company < ActiveRecord::Base
  belongs_to :user
  belongs_to :invoice_line_item
  has_many :users
  has_many :addressbooks
  has_many :invoices
  validates_formatting_of :billing_email_address, using: :email
end
