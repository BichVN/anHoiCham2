class TimelinesController < ApplicationController
  before_action :authenticate_user!
	
	def home
		if user_signed_in?
  	  @menus = current_user.menus.paginate(page: params[:page])
  	end
	end
end
