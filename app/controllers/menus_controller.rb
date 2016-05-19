class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :index, :update, :destroy]

  # GET /menus
  # GET /menus.json
  def index
    @menus = current_user.menus.all
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
  end

  # GET /menus/new
  def new
    @menu = Menu.new
    3.times { @menu.foods.build }
  end

  # GET /menus/1/edit
  def edit
  end

  # POST /menus
  # POST /menus.json
  def create
    @menu = current_user.menus.build(menu_params)
    if @menu.save
      flash[:success] = "menus created!"

      if params[:food]
        for food in params[:food] do
          Food.create(name: food, menu_id: @menu.id)
        end
      end

      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  # PATCH/PUT /menus/1
  # PATCH/PUT /menus/1.json
  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: 'Menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
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
      params.require(:menu).permit(:menuName, :content, :attach, :pic, {imgs: []}, :foodName, :ingredientName, :quality )
    end
end
