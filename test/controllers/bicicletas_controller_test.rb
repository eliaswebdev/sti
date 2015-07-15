require 'test_helper'

class BicicletasControllerTest < ActionController::TestCase
  setup do
    @bicicleta = bicicletas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bicicletas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bicicleta" do
    assert_difference('Bicicleta.count') do
      post :create, bicicleta: {  }
    end

    assert_redirected_to bicicleta_path(assigns(:bicicleta))
  end

  test "should show bicicleta" do
    get :show, id: @bicicleta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bicicleta
    assert_response :success
  end

  test "should update bicicleta" do
    patch :update, id: @bicicleta, bicicleta: {  }
    assert_redirected_to bicicleta_path(assigns(:bicicleta))
  end

  test "should destroy bicicleta" do
    assert_difference('Bicicleta.count', -1) do
      delete :destroy, id: @bicicleta
    end

    assert_redirected_to bicicletas_path
  end
end
