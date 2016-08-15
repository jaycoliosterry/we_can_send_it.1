class Address < ActiveRecord::Base
  belongs_to :addressbook
  belongs_to :user
  belongs_to :parcel
  has_many :recipients
  has_many :addressbooks
  has_one :express_country, :foreign_key => 'country_id'
  require 'express_country'
end
