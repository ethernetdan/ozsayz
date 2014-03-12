class StatusController < ApplicationController
	def update
		if params[:pass] == "hellocollider"
			s = Status.new 	
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
		if s != nil && (Time.zone.now - s.updated_at < 3650)
			if s.open
				@status = "open"
			else
				@status = "closed"
			end
		else
			@status = "broken"
		end
	end

	def title(page_title)
  		content_for :title, page_title.to_s
	end
end	