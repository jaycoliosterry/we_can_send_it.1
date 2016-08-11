class Recipient < ActiveRecord::Base
  belongs_to :address
  belongs_to :parcel
end
