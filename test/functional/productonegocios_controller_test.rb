require 'test_helper'

class ProductonegociosControllerTest < ActionController::TestCase
  setup do
    @productonegocio = productonegocios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productonegocios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productonegocio" do
    assert_difference('Productonegocio.count') do
      post :create, productonegocio: { costo: @productonegocio.costo, descripcion: @productonegocio.descripcion, nombre: @productonegocio.nombre }
    end

    assert_redirected_to productonegocio_path(assigns(:productonegocio))
  end

  test "should show productonegocio" do
    get :show, id: @productonegocio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productonegocio
    assert_response :success
  end

  test "should update productonegocio" do
    put :update, id: @productonegocio, productonegocio: { costo: @productonegocio.costo, descripcion: @productonegocio.descripcion, nombre: @productonegocio.nombre }
    assert_redirected_to productonegocio_path(assigns(:productonegocio))
  end

  test "should destroy productonegocio" do
    assert_difference('Productonegocio.count', -1) do
      delete :destroy, id: @productonegocio
    end

    assert_redirected_to productonegocios_path
  end
end
