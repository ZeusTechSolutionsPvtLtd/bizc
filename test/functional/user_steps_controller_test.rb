require 'test_helper'

class UserStepsControllerTest < ActionController::TestCase
  setup do
    @user_step = user_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_step" do
    assert_difference('UserStep.count') do
      post :create, user_step: @user_step.attributes
    end

    assert_redirected_to user_step_path(assigns(:user_step))
  end

  test "should show user_step" do
    get :show, id: @user_step.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_step.to_param
    assert_response :success
  end

  test "should update user_step" do
    put :update, id: @user_step.to_param, user_step: @user_step.attributes
    assert_redirected_to user_step_path(assigns(:user_step))
  end

  test "should destroy user_step" do
    assert_difference('UserStep.count', -1) do
      delete :destroy, id: @user_step.to_param
    end

    assert_redirected_to user_steps_path
  end
end
