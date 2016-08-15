class ExpressCountry < ActiveRecord::Base
	has_many :addresses, :foreign_key => 'country_id'
end
