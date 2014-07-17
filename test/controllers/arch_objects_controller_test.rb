require 'test_helper'

class ArchObjectsControllerTest < ActionController::TestCase
  setup do
    @arch_object = arch_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arch_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arch_object" do
    assert_difference('ArchObject.count') do
      post :create, arch_object: { avatar: @arch_object.avatar, foundation: @arch_object.foundation, name: @arch_object.name, status: @arch_object.status }
    end

    assert_redirected_to arch_object_path(assigns(:arch_object))
  end

  test "should show arch_object" do
    get :show, id: @arch_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arch_object
    assert_response :success
  end

  test "should update arch_object" do
    patch :update, id: @arch_object, arch_object: { avatar: @arch_object.avatar, foundation: @arch_object.foundation, name: @arch_object.name, status: @arch_object.status }
    assert_redirected_to arch_object_path(assigns(:arch_object))
  end

  test "should destroy arch_object" do
    assert_difference('ArchObject.count', -1) do
      delete :destroy, id: @arch_object
    end

    assert_redirected_to arch_objects_path
  end
end
