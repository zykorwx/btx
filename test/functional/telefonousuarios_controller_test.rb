require 'test_helper'

class TelefonousuariosControllerTest < ActionController::TestCase
  setup do
    @telefonousuario = telefonousuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telefonousuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telefonousuario" do
    assert_difference('Telefonousuario.count') do
      post :create, telefonousuario: { email: @telefonousuario.email, telefono: @telefonousuario.telefono, tipo: @telefonousuario.tipo }
    end

    assert_redirected_to telefonousuario_path(assigns(:telefonousuario))
  end

  test "should show telefonousuario" do
    get :show, id: @telefonousuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @telefonousuario
    assert_response :success
  end

  test "should update telefonousuario" do
    put :update, id: @telefonousuario, telefonousuario: { email: @telefonousuario.email, telefono: @telefonousuario.telefono, tipo: @telefonousuario.tipo }
    assert_redirected_to telefonousuario_path(assigns(:telefonousuario))
  end

  test "should destroy telefonousuario" do
    assert_difference('Telefonousuario.count', -1) do
      delete :destroy, id: @telefonousuario
    end

    assert_redirected_to telefonousuarios_path
  end
end
