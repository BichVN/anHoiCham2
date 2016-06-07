class UsersController < ApplicationController
	before_action :user_signed_in?, only: [:index, :edit, :update, :destroy,
                                        :following, :followers]
  def show
    @user = User.find(params[:id])
    @menus = @user.menus.paginate(page: params[:page])
    @comment = Comment.new
    @tag = Tag.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def following
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  private
end    