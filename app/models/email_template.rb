class EmailTemplate < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :reply_to_email_address, using: :email
end
