require 'test_helper'

class CaminhoesControllerTest < ActionController::TestCase
  setup do
    @caminhao = caminhoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caminhoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caminhao" do
    assert_difference('Caminhao.count') do
      post :create, caminhao: {  }
    end

    assert_redirected_to caminhao_path(assigns(:caminhao))
  end

  test "should show caminhao" do
    get :show, id: @caminhao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caminhao
    assert_response :success
  end

  test "should update caminhao" do
    patch :update, id: @caminhao, caminhao: {  }
    assert_redirected_to caminhao_path(assigns(:caminhao))
  end

  test "should destroy caminhao" do
    assert_difference('Caminhao.count', -1) do
      delete :destroy, id: @caminhao
    end

    assert_redirected_to caminhoes_path
  end
end
