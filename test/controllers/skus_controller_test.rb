require 'test_helper'

class SkusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sku = skus(:one)
  end

  test "should get index" do
    get skus_url, as: :json
    assert_response :success
  end

  test "should create sku" do
    assert_difference('Sku.count') do
      post skus_url, params: { sku: { dimensao: @sku.dimensao, foraDeLinha: @sku.foraDeLinha, imagems_id: @sku.imagems_id, modelo: @sku.modelo, nome: @sku.nome, nomeReduzido: @sku.nomeReduzido, produto: @sku.produto, url: @sku.url } }, as: :json
    end

    assert_response 201
  end

  test "should show sku" do
    get sku_url(@sku), as: :json
    assert_response :success
  end

  test "should update sku" do
    patch sku_url(@sku), params: { sku: { dimensao: @sku.dimensao, foraDeLinha: @sku.foraDeLinha, imagems_id: @sku.imagems_id, modelo: @sku.modelo, nome: @sku.nome, nomeReduzido: @sku.nomeReduzido, produto: @sku.produto, url: @sku.url } }, as: :json
    assert_response 200
  end

  test "should destroy sku" do
    assert_difference('Sku.count', -1) do
      delete sku_url(@sku), as: :json
    end

    assert_response 204
  end
end
