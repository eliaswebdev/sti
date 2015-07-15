require 'test_helper'

class MotocicletasControllerTest < ActionController::TestCase
  setup do
    @motocicleta = motocicletas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motocicletas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motocicleta" do
    assert_difference('Motocicleta.count') do
      post :create, motocicleta: {  }
    end

    assert_redirected_to motocicleta_path(assigns(:motocicleta))
  end

  test "should show motocicleta" do
    get :show, id: @motocicleta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @motocicleta
    assert_response :success
  end

  test "should update motocicleta" do
    patch :update, id: @motocicleta, motocicleta: {  }
    assert_redirected_to motocicleta_path(assigns(:motocicleta))
  end

  test "should destroy motocicleta" do
    assert_difference('Motocicleta.count', -1) do
      delete :destroy, id: @motocicleta
    end

    assert_redirected_to motocicletas_path
  end
end
