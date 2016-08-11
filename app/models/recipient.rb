class Recipient < ActiveRecord::Base
  belongs_to :address
  belongs_to :parcel
  has_one :address
  validates_formatting_of :recipient_email_address, using: :email
end
