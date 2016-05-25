class CommentsController < ApplicationController
	def create
    @menu = Menu.find params[:menu_id]
    @comment = @menu.comments.build comment_params
    if @comment.save
      flash[:success] = "comment created!"
      redirect_to root_url
    else
      flash[:danger] = "comment was not created!"
      redirect_to root_url
    end
  end

  def edit
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to menus_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private 
  def comment_params
  	params.require(:comment).permit :content, :menu_id, :user_id
  end
end
