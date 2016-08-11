class Parcel < ActiveRecord::Base
  belongs_to :order
  has_one :tracking
  has_one :address
  has_one :recipient
end
