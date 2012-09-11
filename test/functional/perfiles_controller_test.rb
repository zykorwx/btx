require 'test_helper'

class PerfilesControllerTest < ActionController::TestCase
  setup do
    @perfile = perfiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perfiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perfile" do
    assert_difference('Perfile.count') do
      post :create, perfile: {  }
    end

    assert_redirected_to perfile_path(assigns(:perfile))
  end

  test "should show perfile" do
    get :show, id: @perfile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @perfile
    assert_response :success
  end

  test "should update perfile" do
    put :update, id: @perfile, perfile: {  }
    assert_redirected_to perfile_path(assigns(:perfile))
  end

  test "should destroy perfile" do
    assert_difference('Perfile.count', -1) do
      delete :destroy, id: @perfile
    end

    assert_redirected_to perfiles_path
  end
end
