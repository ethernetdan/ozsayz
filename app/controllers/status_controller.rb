class StatusController < ApplicationController
	def update
		s = Status.last
		if s == nil
			s = Status.new
		end
		if params[:open] == "1"
			s.open = true
		elsif params[:open] == "0"
			s.open = false
		end
		s.save()
		render :text => s.open
	end

	def read
		s = Status.last
		if s.open
			render :text => "Open"
		else
			render :text => "Closed"
		end
	end
end	