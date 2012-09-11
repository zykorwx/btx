require 'test_helper'

class DireccionusuariosControllerTest < ActionController::TestCase
  setup do
    @direccionusuario = direccionusuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:direccionusuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create direccionusuario" do
    assert_difference('Direccionusuario.count') do
      post :create, direccionusuario: { calle: @direccionusuario.calle, codigoPostal: @direccionusuario.codigoPostal, colonia: @direccionusuario.colonia, estado: @direccionusuario.estado, municipio: @direccionusuario.municipio, numExterior: @direccionusuario.numExterior, numInterior: @direccionusuario.numInterior, pais: @direccionusuario.pais }
    end

    assert_redirected_to direccionusuario_path(assigns(:direccionusuario))
  end

  test "should show direccionusuario" do
    get :show, id: @direccionusuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @direccionusuario
    assert_response :success
  end

  test "should update direccionusuario" do
    put :update, id: @direccionusuario, direccionusuario: { calle: @direccionusuario.calle, codigoPostal: @direccionusuario.codigoPostal, colonia: @direccionusuario.colonia, estado: @direccionusuario.estado, municipio: @direccionusuario.municipio, numExterior: @direccionusuario.numExterior, numInterior: @direccionusuario.numInterior, pais: @direccionusuario.pais }
    assert_redirected_to direccionusuario_path(assigns(:direccionusuario))
  end

  test "should destroy direccionusuario" do
    assert_difference('Direccionusuario.count', -1) do
      delete :destroy, id: @direccionusuario
    end

    assert_redirected_to direccionusuarios_path
  end
end
