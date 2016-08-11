class Address < ActiveRecord::Base
  belongs_to :addressbook
  belongs_to :user
  belongs_to :parcel
  has_many :recipients
end
