require 'test_helper'

class CallBoxesControllerTest < ActionController::TestCase
  setup do
    @call_box = call_boxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:call_boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create call_box" do
    assert_difference('CallBox.count') do
      post :create, :call_box => @call_box.attributes
    end

    assert_redirected_to call_box_path(assigns(:call_box))
  end

  test "should show call_box" do
    get :show, :id => @call_box.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @call_box.to_param
    assert_response :success
  end

  test "should update call_box" do
    put :update, :id => @call_box.to_param, :call_box => @call_box.attributes
    assert_redirected_to call_box_path(assigns(:call_box))
  end

  test "should destroy call_box" do
    assert_difference('CallBox.count', -1) do
      delete :destroy, :id => @call_box.to_param
    end

    assert_redirected_to call_boxes_path
  end
end
