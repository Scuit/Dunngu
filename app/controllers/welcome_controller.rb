class WelcomeController < ApplicationController
  def index
  	@national = News.national_last
  	@provincial = current_user.provincial_last
  	@regional = current_user.regional_last
  	unless params[:search].nil?
  		#Buscar parámetros
  	end
  end
end
