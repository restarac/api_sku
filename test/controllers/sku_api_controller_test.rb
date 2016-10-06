require 'test_helper'

class SkuApiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sku_api_index_url
    assert_response :success
  end

  test "should get create" do
    get sku_api_create_url
    assert_response :success
  end

  test "should get show" do
    get sku_api_show_url
    assert_response :success
  end

  test "should get update" do
    get sku_api_update_url
    assert_response :success
  end

  test "should get destroy" do
    get sku_api_destroy_url
    assert_response :success
  end

end
