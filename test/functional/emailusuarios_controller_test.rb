require 'test_helper'

class EmailusuariosControllerTest < ActionController::TestCase
  setup do
    @emailusuario = emailusuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emailusuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emailusuario" do
    assert_difference('Emailusuario.count') do
      post :create, emailusuario: { email: @emailusuario.email, emailAlternativo: @emailusuario.emailAlternativo }
    end

    assert_redirected_to emailusuario_path(assigns(:emailusuario))
  end

  test "should show emailusuario" do
    get :show, id: @emailusuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emailusuario
    assert_response :success
  end

  test "should update emailusuario" do
    put :update, id: @emailusuario, emailusuario: { email: @emailusuario.email, emailAlternativo: @emailusuario.emailAlternativo }
    assert_redirected_to emailusuario_path(assigns(:emailusuario))
  end

  test "should destroy emailusuario" do
    assert_difference('Emailusuario.count', -1) do
      delete :destroy, id: @emailusuario
    end

    assert_redirected_to emailusuarios_path
  end
end
