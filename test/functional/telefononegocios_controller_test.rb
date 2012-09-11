require 'test_helper'

class TelefononegociosControllerTest < ActionController::TestCase
  setup do
    @telefononegocio = telefononegocios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telefononegocios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telefononegocio" do
    assert_difference('Telefononegocio.count') do
      post :create, telefononegocio: { telefono: @telefononegocio.telefono, tipo: @telefononegocio.tipo }
    end

    assert_redirected_to telefononegocio_path(assigns(:telefononegocio))
  end

  test "should show telefononegocio" do
    get :show, id: @telefononegocio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @telefononegocio
    assert_response :success
  end

  test "should update telefononegocio" do
    put :update, id: @telefononegocio, telefononegocio: { telefono: @telefononegocio.telefono, tipo: @telefononegocio.tipo }
    assert_redirected_to telefononegocio_path(assigns(:telefononegocio))
  end

  test "should destroy telefononegocio" do
    assert_difference('Telefononegocio.count', -1) do
      delete :destroy, id: @telefononegocio
    end

    assert_redirected_to telefononegocios_path
  end
end
