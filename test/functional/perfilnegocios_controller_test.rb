require 'test_helper'

class PerfilnegociosControllerTest < ActionController::TestCase
  setup do
    @perfilnegocio = perfilnegocios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perfilnegocios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perfilnegocio" do
    assert_difference('Perfilnegocio.count') do
      post :create, perfilnegocio: { calificacion: @perfilnegocio.calificacion, fechaCreacion: @perfilnegocio.fechaCreacion, nombreNegocio: @perfilnegocio.nombreNegocio, rfc: @perfilnegocio.rfc, tipoNegocio: @perfilnegocio.tipoNegocio }
    end

    assert_redirected_to perfilnegocio_path(assigns(:perfilnegocio))
  end

  test "should show perfilnegocio" do
    get :show, id: @perfilnegocio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @perfilnegocio
    assert_response :success
  end

  test "should update perfilnegocio" do
    put :update, id: @perfilnegocio, perfilnegocio: { calificacion: @perfilnegocio.calificacion, fechaCreacion: @perfilnegocio.fechaCreacion, nombreNegocio: @perfilnegocio.nombreNegocio, rfc: @perfilnegocio.rfc, tipoNegocio: @perfilnegocio.tipoNegocio }
    assert_redirected_to perfilnegocio_path(assigns(:perfilnegocio))
  end

  test "should destroy perfilnegocio" do
    assert_difference('Perfilnegocio.count', -1) do
      delete :destroy, id: @perfilnegocio
    end

    assert_redirected_to perfilnegocios_path
  end
end
