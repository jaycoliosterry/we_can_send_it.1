class Stock < ActiveRecord::Base
  belongs_to :company
  belongs_to :parcel
  has_and_belongs_to_many :stock_groups
  has_attached_file :image
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
