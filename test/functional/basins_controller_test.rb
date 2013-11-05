require 'test_helper'

class BasinsControllerTest < ActionController::TestCase
  setup do
    @basin = basins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basin" do
    assert_difference('Basin.count') do
      post :create, basin: { description: @basin.description, name: @basin.name, obs: @basin.obs }
    end

    assert_redirected_to basin_path(assigns(:basin))
  end

  test "should show basin" do
    get :show, id: @basin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basin
    assert_response :success
  end

  test "should update basin" do
    put :update, id: @basin, basin: { description: @basin.description, name: @basin.name, obs: @basin.obs }
    assert_redirected_to basin_path(assigns(:basin))
  end

  test "should destroy basin" do
    assert_difference('Basin.count', -1) do
      delete :destroy, id: @basin
    end

    assert_redirected_to basins_path
  end
end
