class Address < ActiveRecord::Base
  belongs_to :addressbook
  belongs_to :user
  belongs_to :parcel
  has_many :recipients
  has_many :addressbooks
  require 'easypost'
EasyPost.api_key = "EnS2udtcTnAIusIl2axdBw"
end
