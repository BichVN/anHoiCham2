class MenusController < ApplicationController
  #before_action :set_menu, only: [:show, :edit, :index, :update, :destroy]

  def index
    @menus = current_user.menus.all
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def new
    @menu = Menu.new
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def create
    @menu = current_user.menus.build(menu_params)
    if @menu.save
      flash[:success] = "menus created!"

      if params[:food]
        params[:food].each_with_index do |food,index|
          Food.create(name: food, post_recipe: params[:post_recipe][index], menu_id: @menu.id)
        end
      end

      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  def update
    @menu = Menu.find params[:id]
    respond_to do |format|
      if @menu.update(menu_params)
        if params[:foods]
          params[:foods][:id].each_with_index do |id, index|
            food = Food.find id.to_i
            food.update_attributes(id: id, name: params[:foods][:name][index], post_recipe: params[:foods][:post_recipe][index], 
              menu_id: @menu.id)
          end
        end
        format.html { redirect_to @menu, notice: 'Menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menus_url, notice: 'Menu was <su>£™</su>ccessfully destroyed.' }
      format.json { head :no_content }
    end
  end

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
  
  def add_food
    # @menu = Menu.find(params[:id])
    respond_to do |format|
      format.js #add_food.js.erb
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(:menuName, :content, {imgs: []}, :foodName, :ingredientName, :quality)
    end
end
