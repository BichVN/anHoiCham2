class MenuTagsController < ApplicationController

  def new
    @menu_tag = MenuTag.new
    @menu = Menu.find_by id: params[:menu_id]
    @tags = current_user.tags.all
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

  def edit
    @menu = Menu.find_by id: params[:menu_id]
    @tag = current_user.tags.find_by(id: params[:id])
    if @menu.menu_tags.find_by(tag: @tag).nil?
      @menu.menu_tags.create tag: @tag
    end

    redirect_to root_path
    # respond_to do |format|
    #   format.js
    # end
  end

  def chose
    @menu = Menu.find_by id: params[:menu_id]
    tag = Tag.find_by id: params[:tag_id]
    @menu.menu_tags.create tag: tag
    redirect_to tags_path
  end
end
