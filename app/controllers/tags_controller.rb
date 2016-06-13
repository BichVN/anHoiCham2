class TagsController < ApplicationController
  before_action :authenticate_user!

  def create
    @menu = Menu.find_by id: params[:tag][:menu_id]
    @tag = current_user.tags.build(tag_params)

    if @tag.save
      flash[:success] = "tag created!"
      respond_to do |format|
        format.js
      end
    else
      redirect_to root_url
    end
  end

  def new
    @tag = Tag.new
  end

  def destroy
    Tag.find(params[:id]).destroy
    redirect_to tags_path

    respond_to do |format|
      format.js
    end
  end

  def index
    @tags = current_user.tags.all
    @menu = Menu.new
    @comment = Comment.new
    @tag = Tag.new
  end
  
  private
  def tag_params
    params.require(:tag).permit(:tag)
  end
end
