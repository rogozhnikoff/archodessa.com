require 'test_helper'

class ArchitectsControllerTest < ActionController::TestCase
  setup do
    @architect = architects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:architects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create architect" do
    assert_difference('Architect.count') do
      post :create, architect: { avatar: @architect.avatar, familyname: @architect.familyname, name: @architect.name, surname: @architect.surname }
    end

    assert_redirected_to architect_path(assigns(:architect))
  end

  test "should show architect" do
    get :show, id: @architect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @architect
    assert_response :success
  end

  test "should update architect" do
    patch :update, id: @architect, architect: { avatar: @architect.avatar, familyname: @architect.familyname, name: @architect.name, surname: @architect.surname }
    assert_redirected_to architect_path(assigns(:architect))
  end

  test "should destroy architect" do
    assert_difference('Architect.count', -1) do
      delete :destroy, id: @architect
    end

    assert_redirected_to architects_path
  end
end
