class Donor < ActiveRecord::Base
	belongs_to :user
	has_many :donations
	


	validates_uniqueness_of :username
	validates_format_of :email, with: /.+@.+\..+/
end
