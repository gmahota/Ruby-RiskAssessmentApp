require 'test_helper'

class BaciaControllerTest < ActionController::TestCase
  setup do
    @bacium = bacia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bacia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bacium" do
    assert_difference('Bacium.count') do
      post :create, bacium: { descricao: @bacium.descricao }
    end

    assert_redirected_to bacium_path(assigns(:bacium))
  end

  test "should show bacium" do
    get :show, id: @bacium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bacium
    assert_response :success
  end

  test "should update bacium" do
    put :update, id: @bacium, bacium: { descricao: @bacium.descricao }
    assert_redirected_to bacium_path(assigns(:bacium))
  end

  test "should destroy bacium" do
    assert_difference('Bacium.count', -1) do
      delete :destroy, id: @bacium
    end

    assert_redirected_to bacia_path
  end
end
