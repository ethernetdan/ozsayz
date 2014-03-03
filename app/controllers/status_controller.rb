class StatusController < ApplicationController
	def update
		if params[:pass] == "hellocollider"
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
	end

	def read
		s = Status.last
		if s != nil
			if s.open
				render :text => "Open"
			else
				render :text => "Closed"
			end
		end
	end
end	