require 'test_helper'

class SeeartistsControllerTest < ActionController::TestCase
  setup do
    @seeartist = seeartists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seeartists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seeartist" do
    assert_difference('Seeartist.count') do
      post :create, seeartist: {  }
    end

    assert_redirected_to seeartist_path(assigns(:seeartist))
  end

  test "should show seeartist" do
    get :show, id: @seeartist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seeartist
    assert_response :success
  end

  test "should update seeartist" do
    patch :update, id: @seeartist, seeartist: {  }
    assert_redirected_to seeartist_path(assigns(:seeartist))
  end

  test "should destroy seeartist" do
    assert_difference('Seeartist.count', -1) do
      delete :destroy, id: @seeartist
    end

    assert_redirected_to seeartists_path
  end
end
