class Donor < ActiveRecord::Base
	belongs_to :user
	has_many :donations
	has_many :events
end
