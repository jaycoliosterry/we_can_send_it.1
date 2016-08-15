class ExpressCountry < ActiveRecord::Base
	belongs_to :address, :foreign_key => 'country_id'
end
