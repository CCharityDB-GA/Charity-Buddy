class DonorController < ApplicationController

	def list
		render :donor_list
	end

	def add
		current_user.donors.create!(name: params[:name], 
																email: params[:email],
																username: params[:username].downcase)
		render :donor_list
	end

end
