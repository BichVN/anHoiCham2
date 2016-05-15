require 'test_helper'

class PostRecipesControllerTest < ActionController::TestCase
  setup do
    @post_recipe = post_recipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_recipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_recipe" do
    assert_difference('PostRecipe.count') do
      post :create, post_recipe: { content: @post_recipe.content }
    end

    assert_redirected_to post_recipe_path(assigns(:post_recipe))
  end

  test "should show post_recipe" do
    get :show, id: @post_recipe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_recipe
    assert_response :success
  end

  test "should update post_recipe" do
    patch :update, id: @post_recipe, post_recipe: { content: @post_recipe.content }
    assert_redirected_to post_recipe_path(assigns(:post_recipe))
  end

  test "should destroy post_recipe" do
    assert_difference('PostRecipe.count', -1) do
      delete :destroy, id: @post_recipe
    end

    assert_redirected_to post_recipes_path
  end
end
