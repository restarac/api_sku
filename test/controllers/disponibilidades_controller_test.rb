require 'test_helper'

class DisponibilidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disponibilidade = disponibilidades(:one)
  end

  test "should get index" do
    get disponibilidades_url, as: :json
    assert_response :success
  end

  test "should create disponibilidade" do
    assert_difference('Disponibilidade.count') do
      post disponibilidades_url, params: { disponibilidade: { disponivel: @disponibilidade.disponivel, preco: @disponibilidade.preco, preco: @disponibilidade.preco, precoDe: @disponibilidade.precoDe, precoDe: @disponibilidade.precoDe } }, as: :json
    end

    assert_response 201
  end

  test "should show disponibilidade" do
    get disponibilidade_url(@disponibilidade), as: :json
    assert_response :success
  end

  test "should update disponibilidade" do
    patch disponibilidade_url(@disponibilidade), params: { disponibilidade: { disponivel: @disponibilidade.disponivel, preco: @disponibilidade.preco, preco: @disponibilidade.preco, precoDe: @disponibilidade.precoDe, precoDe: @disponibilidade.precoDe } }, as: :json
    assert_response 200
  end

  test "should destroy disponibilidade" do
    assert_difference('Disponibilidade.count', -1) do
      delete disponibilidade_url(@disponibilidade), as: :json
    end

    assert_response 204
  end
end
