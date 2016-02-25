class Event < ActiveRecord::Base
	has_many :donors
	has_many :donations
end
