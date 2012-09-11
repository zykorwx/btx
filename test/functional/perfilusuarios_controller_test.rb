require 'test_helper'

class PerfilusuariosControllerTest < ActionController::TestCase
  setup do
    @perfilusuario = perfilusuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perfilusuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perfilusuario" do
    assert_difference('Perfilusuario.count') do
      post :create, perfilusuario: {  }
    end

    assert_redirected_to perfilusuario_path(assigns(:perfilusuario))
  end

  test "should show perfilusuario" do
    get :show, id: @perfilusuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @perfilusuario
    assert_response :success
  end

  test "should update perfilusuario" do
    put :update, id: @perfilusuario, perfilusuario: {  }
    assert_redirected_to perfilusuario_path(assigns(:perfilusuario))
  end

  test "should destroy perfilusuario" do
    assert_difference('Perfilusuario.count', -1) do
      delete :destroy, id: @perfilusuario
    end

    assert_redirected_to perfilusuarios_path
  end
end
