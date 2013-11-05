require 'test_helper'

class DamsControllerTest < ActionController::TestCase
  setup do
    @dam = dams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dam" do
    assert_difference('Dam.count') do
      post :create, dam: { basin_id: @dam.basin_id, descricao: @dam.descricao, latitude: @dam.latitude, longitude: @dam.longitude, radius: @dam.radius }
    end

    assert_redirected_to dam_path(assigns(:dam))
  end

  test "should show dam" do
    get :show, id: @dam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dam
    assert_response :success
  end

  test "should update dam" do
    put :update, id: @dam, dam: { basin_id: @dam.basin_id, descricao: @dam.descricao, latitude: @dam.latitude, longitude: @dam.longitude, radius: @dam.radius }
    assert_redirected_to dam_path(assigns(:dam))
  end

  test "should destroy dam" do
    assert_difference('Dam.count', -1) do
      delete :destroy, id: @dam
    end

    assert_redirected_to dams_path
  end
end
