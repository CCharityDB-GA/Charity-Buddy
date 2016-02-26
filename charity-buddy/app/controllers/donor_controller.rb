class DonorController < ApplicationController

	def list
		render :donor_list
	end

	def add
		@donor = current_user.donors.create(name: params[:name], email: params[:email])
		#binding.pry
		render :donor_list
	end

end
