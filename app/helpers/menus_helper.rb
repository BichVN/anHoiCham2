module MenusHelper
  def upvote
    @menu = Menu.find(params[:id])
    @menu.upvote_by current_user
    redirect_to root_path
  end

  def downvote
    @menu = Menu.find(params[:id])
    @menu.downvote_by current_user
    redirect_to root_path
  end
end

