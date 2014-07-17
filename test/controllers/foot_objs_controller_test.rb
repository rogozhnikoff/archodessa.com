require 'test_helper'

class FootObjsControllerTest < ActionController::TestCase
  setup do
    @foot_obj = foot_objs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foot_objs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foot_obj" do
    assert_difference('FootObj.count') do
      post :create, foot_obj: { body: @foot_obj.body, enable: @foot_obj.enable, name: @foot_obj.name, picture: @foot_obj.picture }
    end

    assert_redirected_to foot_obj_path(assigns(:foot_obj))
  end

  test "should show foot_obj" do
    get :show, id: @foot_obj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foot_obj
    assert_response :success
  end

  test "should update foot_obj" do
    patch :update, id: @foot_obj, foot_obj: { body: @foot_obj.body, enable: @foot_obj.enable, name: @foot_obj.name, picture: @foot_obj.picture }
    assert_redirected_to foot_obj_path(assigns(:foot_obj))
  end

  test "should destroy foot_obj" do
    assert_difference('FootObj.count', -1) do
      delete :destroy, id: @foot_obj
    end

    assert_redirected_to foot_objs_path
  end
end
