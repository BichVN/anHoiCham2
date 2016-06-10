class TagsController < ApplicationController
before_action :authenticate_user!
  def create
    @tag = current_user.tags.build(tag_params)
    if @tag.save
      @menu = Menu.find_by id: params[:menu_id]
      @menu.update_attributes tag: @tag
      flash[:success] = "tag created!"
      redirect_to root_url
    else
      redirect_to root_url
    end
  end

  def new
    @tag = Tag.new
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
