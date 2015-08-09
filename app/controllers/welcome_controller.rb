class WelcomeController < ApplicationController
  def index
  	@national_last = News.national_last
  	@provincial_last = current_user.provincial_last
  	unless params[:search].nil?
  		#Buscar parámetros
  	end
  end
end
