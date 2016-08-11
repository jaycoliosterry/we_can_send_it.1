class Stock < ActiveRecord::Base
  belongs_to :company
  belongs_to :parcel
  has_and_belongs_to_many :stock_groups
end
