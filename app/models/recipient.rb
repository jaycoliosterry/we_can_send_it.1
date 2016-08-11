class Recipient < ActiveRecord::Base
  belongs_to :address
  belongs_to :parcel
  has_one :address
end
