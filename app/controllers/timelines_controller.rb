class TimelinesController < ApplicationController
  before_action :authenticate_user!
  def home
    if user_signed_in?
      @menus = current_user.feed.paginate(page: params[:page])
      @menu = Menu.new
      @tag = Tag.new
      @comment = Comment.new
      if @menu.save
        flash[:success] = "menus created!"
      else
        flash[:danger] = "Something went wrong"
      end
    end
  end
end