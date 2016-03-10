class Campaign < ActiveRecord::Base
	has_many :events
end
