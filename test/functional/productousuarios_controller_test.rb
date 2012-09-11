require 'test_helper'

class ProductousuariosControllerTest < ActionController::TestCase
  setup do
    @productousuario = productousuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productousuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productousuario" do
    assert_difference('Productousuario.count') do
      post :create, productousuario: { calificacion: @productousuario.calificacion, costo: @productousuario.costo, descripcion: @productousuario.descripcion, email: @productousuario.email, fechaCaptura: @productousuario.fechaCaptura, nombre: @productousuario.nombre }
    end

    assert_redirected_to productousuario_path(assigns(:productousuario))
  end

  test "should show productousuario" do
    get :show, id: @productousuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productousuario
    assert_response :success
  end

  test "should update productousuario" do
    put :update, id: @productousuario, productousuario: { calificacion: @productousuario.calificacion, costo: @productousuario.costo, descripcion: @productousuario.descripcion, email: @productousuario.email, fechaCaptura: @productousuario.fechaCaptura, nombre: @productousuario.nombre }
    assert_redirected_to productousuario_path(assigns(:productousuario))
  end

  test "should destroy productousuario" do
    assert_difference('Productousuario.count', -1) do
      delete :destroy, id: @productousuario
    end

    assert_redirected_to productousuarios_path
  end
end
