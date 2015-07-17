require 'test_helper'

class DependentesControllerTest < ActionController::TestCase
  setup do
    @dependente = dependentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dependentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dependente" do
    assert_difference('Dependente.count') do
      post :create, dependente: {  }
    end

    assert_redirected_to dependente_path(assigns(:dependente))
  end

  test "should show dependente" do
    get :show, id: @dependente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dependente
    assert_response :success
  end

  test "should update dependente" do
    patch :update, id: @dependente, dependente: {  }
    assert_redirected_to dependente_path(assigns(:dependente))
  end

  test "should destroy dependente" do
    assert_difference('Dependente.count', -1) do
      delete :destroy, id: @dependente
    end

    assert_redirected_to dependentes_path
  end
end
