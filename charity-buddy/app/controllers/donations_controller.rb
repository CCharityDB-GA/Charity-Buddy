class DonationsController < ApplicationController

	def add
		donor = Donor.where(username: params[:username].downcase)
		cause = Cause.where(name: params[:cause].downcase)
		Donation.create!(amount: params[:amount],
										 event: params[:event].downcase,
							       cause: params[:cause].downcase)
		total_donations = donor[0]["lifetime_donations"]
		cause_donation = cause[0]["amount"]
		cause_id = cause[0]["id"]
		id = donor[0]["id"]
		#binding.pry
		cause_total = cause_donation.to_i + params[:amount].to_i
		new_total = total_donations.to_i + params[:amount].to_i
		donor.update(id, :lifetime_donations => new_total)
		cause.update(cause_id, :amount => cause_total)

		redirect_to donor_list_path
	end



end
