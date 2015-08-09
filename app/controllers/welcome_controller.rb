class WelcomeController < ApplicationController
	def index
		@national = News.national_last
		@all = Province.where(name: "todas")
		@news = News.new
		if user_signed_in?
			@provincial = current_user.provincial_last
			@regional = current_user.regional_last
		end

		unless params[:search].nil?
		end
	end

	def select_sub_category
		@sub_categories = Category.find(params[:category_id]).sub_categories.order(:name)
		respond_to do |format|
			format.js
		end
	end

	def select_province
		@provinces = Region.find(params[:region_id]).provinces.order(:name)
		respond_to do |format|
			format.js
		end
	end
end
