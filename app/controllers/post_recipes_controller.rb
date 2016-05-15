class PostRecipesController < ApplicationController
  before_action :set_post_recipe, only: [:show, :edit, :update, :destroy]

  # GET /post_recipes
  # GET /post_recipes.json
  def index
    @post_recipes = PostRecipe.all
  end

  # GET /post_recipes/1
  # GET /post_recipes/1.json
  def show
  end

  # GET /post_recipes/new
  def new
    @post_recipe = PostRecipe.new
  end

  # GET /post_recipes/1/edit
  def edit
  end

  # POST /post_recipes
  # POST /post_recipes.json
  def create
    @post_recipe = PostRecipe.new(post_recipe_params)

    respond_to do |format|
      if @post_recipe.save
        format.html { redirect_to @post_recipe, notice: 'Post recipe was successfully created.' }
        format.json { render :show, status: :created, location: @post_recipe }
      else
        format.html { render :new }
        format.json { render json: @post_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_recipes/1
  # PATCH/PUT /post_recipes/1.json
  def update
    respond_to do |format|
      if @post_recipe.update(post_recipe_params)
        format.html { redirect_to @post_recipe, notice: 'Post recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_recipe }
      else
        format.html { render :edit }
        format.json { render json: @post_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_recipes/1
  # DELETE /post_recipes/1.json
  def destroy
    @post_recipe.destroy
    respond_to do |format|
      format.html { redirect_to post_recipes_url, notice: 'Post recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_recipe
      @post_recipe = PostRecipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_recipe_params
      params.require(:post_recipe).permit(:content)
    end
end
