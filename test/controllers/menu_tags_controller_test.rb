require 'test_helper'

class MenuTagsControllerTest < ActionController::TestCase
  setup do
    @menu_tag = menu_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_tag" do
    assert_difference('MenuTag.count') do
      post :create, menu_tag: { menu_id: @menu_tag.menu_id, tag_id: @menu_tag.tag_id }
    end

    assert_redirected_to menu_tag_path(assigns(:menu_tag))
  end

  test "should show menu_tag" do
    get :show, id: @menu_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu_tag
    assert_response :success
  end

  test "should update menu_tag" do
    patch :update, id: @menu_tag, menu_tag: { menu_id: @menu_tag.menu_id, tag_id: @menu_tag.tag_id }
    assert_redirected_to menu_tag_path(assigns(:menu_tag))
  end

  test "should destroy menu_tag" do
    assert_difference('MenuTag.count', -1) do
      delete :destroy, id: @menu_tag
    end

    assert_redirected_to menu_tags_path
  end
end
