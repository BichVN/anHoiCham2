class SearchsController < ApplicationController
  before_action :authenticate_user!
  def index
    @search = User.search name_cont: params[:q]
    @users = @search.result.paginate(page: params[:page])

    @search_menu = Menu.search menuName_cont: params[:q]
    @menus = @search_menu.result.paginate(page: params[:page])
    @search_string =  params[:q]
  end
end
