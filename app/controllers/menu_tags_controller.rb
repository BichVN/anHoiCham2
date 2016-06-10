class MenuTagsController < ApplicationController

  def new
    @menu_tag = MenuTag.new
    @menu = Menu.find_by id: params[:menu_id]
  end

  def create
    @menu = Menu.find_by id: params[:menu_id]
    tag = current_user.tags.find_by(tag: params[:tag]).present? ? current_user.tags.find_by(tag: params[:tag]) : 
      current_user.tags.create(tag: params[:tag])
    if @menu.menu_tags.find_by(tag: tag).nil?
      @menu.menu_tags.create tag: tag
    end
    redirect_to tags_path
  end
end
