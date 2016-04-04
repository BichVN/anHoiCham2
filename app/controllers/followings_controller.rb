class FollowingsController < ApplicationController
	before_action :authenticate_user!
  def index
    @user = User.find params[:user_id] 
    @users = @user.following.paginate page: params[:page]
  end
end

