require 'test_helper'

class BuscadorControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get resultado" do
    get :resultado
    assert_response :success
  end

end
