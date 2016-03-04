class Donor < ActiveRecord::Base
	belongs_to :user
	has_many :donations
	has_many :events


	validates_uniqueness_of :username
	validates_format_of :email, with: /.+@.+\..+/
end
