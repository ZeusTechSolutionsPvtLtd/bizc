require 'test_helper'

class Step2sControllerTest < ActionController::TestCase
  setup do
    @step2 = step2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:step2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create step2" do
    assert_difference('Step2.count') do
      post :create, step2: @step2.attributes
    end

    assert_redirected_to step2_path(assigns(:step2))
  end

  test "should show step2" do
    get :show, id: @step2.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @step2.to_param
    assert_response :success
  end

  test "should update step2" do
    put :update, id: @step2.to_param, step2: @step2.attributes
    assert_redirected_to step2_path(assigns(:step2))
  end

  test "should destroy step2" do
    assert_difference('Step2.count', -1) do
      delete :destroy, id: @step2.to_param
    end

    assert_redirected_to step2s_path
  end
end
