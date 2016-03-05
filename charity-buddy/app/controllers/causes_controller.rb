class CausesController < ApplicationController

	def list
		render :cause_list
	end

	def add
		cause = Cause.create!(name: params[:name], notes: params[:notes])
		render :cause_list
	end
end
