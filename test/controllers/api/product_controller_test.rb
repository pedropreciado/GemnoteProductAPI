require 'test_helper'

class Api::ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_product_index_url
    assert_response :success
  end

  test "should get new" do
    get api_product_new_url
    assert_response :success
  end

  test "should get edit" do
    get api_product_edit_url
    assert_response :success
  end

  test "should get create" do
    get api_product_create_url
    assert_response :success
  end

  test "should get update" do
    get api_product_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_product_destroy_url
    assert_response :success
  end

  test "should get show" do
    get api_product_show_url
    assert_response :success
  end

end
