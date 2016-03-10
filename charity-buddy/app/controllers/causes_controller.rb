class CausesController < ApplicationController

	def list
		render :cause_list
	end

	def add
		cause = Cause.create!(name: params[:name].downcase, notes: params[:notes])
		render :cause_list
	end
end
