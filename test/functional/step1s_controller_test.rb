require 'test_helper'

class Step1sControllerTest < ActionController::TestCase
  setup do
    @step1 = step1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:step1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create step1" do
    assert_difference('Step1.count') do
      post :create, step1: @step1.attributes
    end

    assert_redirected_to step1_path(assigns(:step1))
  end

  test "should show step1" do
    get :show, id: @step1.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @step1.to_param
    assert_response :success
  end

  test "should update step1" do
    put :update, id: @step1.to_param, step1: @step1.attributes
    assert_redirected_to step1_path(assigns(:step1))
  end

  test "should destroy step1" do
    assert_difference('Step1.count', -1) do
      delete :destroy, id: @step1.to_param
    end

    assert_redirected_to step1s_path
  end
end
