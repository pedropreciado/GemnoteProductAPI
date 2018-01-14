require 'test_helper'

class Api::OptionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_option_index_url
    assert_response :success
  end

  test "should get new" do
    get api_option_new_url
    assert_response :success
  end

  test "should get edit" do
    get api_option_edit_url
    assert_response :success
  end

  test "should get create" do
    get api_option_create_url
    assert_response :success
  end

  test "should get update" do
    get api_option_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_option_destroy_url
    assert_response :success
  end

  test "should get show" do
    get api_option_show_url
    assert_response :success
  end

end
