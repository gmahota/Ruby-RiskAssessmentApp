require 'test_helper'

class ProbabilitiesControllerTest < ActionController::TestCase
  setup do
    @probability = probabilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:probabilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create probability" do
    assert_difference('Probability.count') do
      post :create, probability: { name: @probability.name, value: @probability.value }
    end

    assert_redirected_to probability_path(assigns(:probability))
  end

  test "should show probability" do
    get :show, id: @probability
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @probability
    assert_response :success
  end

  test "should update probability" do
    put :update, id: @probability, probability: { name: @probability.name, value: @probability.value }
    assert_redirected_to probability_path(assigns(:probability))
  end

  test "should destroy probability" do
    assert_difference('Probability.count', -1) do
      delete :destroy, id: @probability
    end

    assert_redirected_to probabilities_path
  end
end
