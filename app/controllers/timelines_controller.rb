class TimelinesController < ApplicationController
  before_action :authenticate_user!
	
	def home
		if user_signed_in?
  	  @menu = Menu.new
  	  @menus = current_user.menus.paginate(page: params[:page])
  	end
	end
end
