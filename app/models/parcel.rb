class Parcel < ActiveRecord::Base
  belongs_to :order
  has_one :tracking
end
