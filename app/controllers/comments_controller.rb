class CommentsController < ApplicationController
	def create
    @menu = Menu.find params[:menu_id]
    @comment = @menu.comments.build comment_params
    @comment.user_id = current_user.id #or whatever is you session name
    if @comment.save
      flash[:success] = "comment created!"
      redirect_to root_url
    else
      redirect_to root_url
    end
  end

  private 
  def comment_params
  	params.require(:comment).permit :content, :menu_id, :user_id
  end
end
