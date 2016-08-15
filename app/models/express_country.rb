class ExpressCountry < ActiveRecord::Base
	has_many :addresses
end
