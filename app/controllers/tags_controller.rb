class TagsController < ApplicationController
  def create
    @tag = current_user.tags.build(tag_params)
    if @tag.save
      flash[:success] = "tag created!"
      redirect_to root_url
    else
      redirect_to root_url
    end
  end

  def new
    @tag = Tag.new
    #byebug
  end

   def index
    @tags = Tag.all
  end
  
  private
  def tag_params
      params.require(:tag).permit(:tag)
  end
end
