class WelcomeController < ApplicationController
	def index
		@national = News.national_last
		if user_signed_in?
			@provincial = current_user.provincial_last
			@regional = current_user.regional_last
		end

		unless params[:search].nil?
		end
	end
end
