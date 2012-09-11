require 'test_helper'

class DireccionNegociosControllerTest < ActionController::TestCase
  setup do
    @direccion_negocio = direccion_negocios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:direccion_negocios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create direccion_negocio" do
    assert_difference('DireccionNegocio.count') do
      post :create, direccion_negocio: { calle: @direccion_negocio.calle, codigoPostal: @direccion_negocio.codigoPostal, colonia: @direccion_negocio.colonia, estado: @direccion_negocio.estado, municipio: @direccion_negocio.municipio, numExterior: @direccion_negocio.numExterior, numInterior: @direccion_negocio.numInterior, pais: @direccion_negocio.pais }
    end

    assert_redirected_to direccion_negocio_path(assigns(:direccion_negocio))
  end

  test "should show direccion_negocio" do
    get :show, id: @direccion_negocio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @direccion_negocio
    assert_response :success
  end

  test "should update direccion_negocio" do
    put :update, id: @direccion_negocio, direccion_negocio: { calle: @direccion_negocio.calle, codigoPostal: @direccion_negocio.codigoPostal, colonia: @direccion_negocio.colonia, estado: @direccion_negocio.estado, municipio: @direccion_negocio.municipio, numExterior: @direccion_negocio.numExterior, numInterior: @direccion_negocio.numInterior, pais: @direccion_negocio.pais }
    assert_redirected_to direccion_negocio_path(assigns(:direccion_negocio))
  end

  test "should destroy direccion_negocio" do
    assert_difference('DireccionNegocio.count', -1) do
      delete :destroy, id: @direccion_negocio
    end

    assert_redirected_to direccion_negocios_path
  end
end
