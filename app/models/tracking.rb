class Tracking < ActiveRecord::Base
  belongs_to :parcel
  has_one :parcel
end
