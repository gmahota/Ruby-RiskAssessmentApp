require 'test_helper'

class ControlersControllerTest < ActionController::TestCase
  setup do
    @controler = controlers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:controlers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create controler" do
    assert_difference('Controler.count') do
      post :create, controler: { StaticPages: @controler.StaticPages, about: @controler.about, help: @controler.help }
    end

    assert_redirected_to controler_path(assigns(:controler))
  end

  test "should show controler" do
    get :show, id: @controler
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @controler
    assert_response :success
  end

  test "should update controler" do
    put :update, id: @controler, controler: { StaticPages: @controler.StaticPages, about: @controler.about, help: @controler.help }
    assert_redirected_to controler_path(assigns(:controler))
  end

  test "should destroy controler" do
    assert_difference('Controler.count', -1) do
      delete :destroy, id: @controler
    end

    assert_redirected_to controlers_path
  end
end
