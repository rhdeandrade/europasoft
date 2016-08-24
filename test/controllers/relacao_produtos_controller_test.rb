require 'test_helper'

class RelacaoProdutosControllerTest < ActionController::TestCase
  setup do
    @relacao_produto = relacao_produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relacao_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relacao_produto" do
    assert_difference('RelacaoProduto.count') do
      post :create, relacao_produto: { camara_troca_id: @relacao_produto.camara_troca_id, produto_id: @relacao_produto.produto_id }
    end

    assert_redirected_to relacao_produto_path(assigns(:relacao_produto))
  end

  test "should show relacao_produto" do
    get :show, id: @relacao_produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relacao_produto
    assert_response :success
  end

  test "should update relacao_produto" do
    patch :update, id: @relacao_produto, relacao_produto: { camara_troca_id: @relacao_produto.camara_troca_id, produto_id: @relacao_produto.produto_id }
    assert_redirected_to relacao_produto_path(assigns(:relacao_produto))
  end

  test "should destroy relacao_produto" do
    assert_difference('RelacaoProduto.count', -1) do
      delete :destroy, id: @relacao_produto
    end

    assert_redirected_to relacao_produtos_path
  end
end
