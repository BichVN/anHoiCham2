class TimelinesController < ApplicationController
  before_action :authenticate_user!
  
  def home
    if user_signed_in?
      @menu = Menu.new
      @menus = current_user.menus.paginate(page: params[:page])
      @comment = Comment.new
      @tag = Tag.new
    end
  end
end

