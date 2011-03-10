require 'test_helper'

class CbTestsControllerTest < ActionController::TestCase
  setup do
    @cb_test = cb_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cb_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cb_test" do
    assert_difference('CbTest.count') do
      post :create, :cb_test => @cb_test.attributes
    end

    assert_redirected_to cb_test_path(assigns(:cb_test))
  end

  test "should show cb_test" do
    get :show, :id => @cb_test.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cb_test.to_param
    assert_response :success
  end

  test "should update cb_test" do
    put :update, :id => @cb_test.to_param, :cb_test => @cb_test.attributes
    assert_redirected_to cb_test_path(assigns(:cb_test))
  end

  test "should destroy cb_test" do
    assert_difference('CbTest.count', -1) do
      delete :destroy, :id => @cb_test.to_param
    end

    assert_redirected_to cb_tests_path
  end
end
