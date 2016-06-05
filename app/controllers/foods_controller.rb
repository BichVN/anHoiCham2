class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  def index
    @foods = Food.all
  end

  def show
  end

  def new
    @food = Food.new
    @menu = Menu.new
    respond_to do |format|
      format.js
    end
  end

  def edit
  end

  def create
    @food = Food.new(food_params)

    respond_to do |format|
      if @food.save
        format.html { redirect_to @food, notice: 'Food was successfully created.' }
        format.json { render :show, status: :created, location: @food }
      else
        format.html { render :new }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to @food, notice: 'Food was successfully updated.' }
        format.json { render :show, status: :ok, location: @food }
      else
        format.html { render :edit }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @food.destroy
    respond_to do |format|
      format.html { redirect_to foods_url, notice: 'Food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def ask
    @food = Food.find(params[:id])
    @food.update(status: "1", ask_user_id: current_user.id)
    respond_to do |format|
      format.js #ask.js.erb
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_params
      params.require(:food).permit(:name, :post_recipe)
    end
end
