class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  	def title(page_title)
		content_for :title, page_title.to_s
	end
	helper_method :title
end
