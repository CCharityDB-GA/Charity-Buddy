class DonationsController < ApplicationController

	def add
		donor = Donor.where(username: params[:username])
		Donation.create!(amount: params[:amount],
										 event: params[:event],
							       cause: params[:cause])
		total_donations = donor[0]["lifetime_donations"]
		id = donor[0]["id"]
		new_total = total_donations.to_i + params[:amount].to_i
		donor.update(id, :lifetime_donations => new_total)
		redirect_to donor_list_path
	end



end
