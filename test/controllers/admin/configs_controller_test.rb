require 'test_helper'

class Admin::ConfigsControllerTest < ActionDispatch::IntegrationTest
  test "should get new_category" do
    get admin_configs_new_category_url
    assert_response :success
  end

  test "should get edit_category" do
    get admin_configs_edit_category_url
    assert_response :success
  end

  test "should get new_cource" do
    get admin_configs_new_cource_url
    assert_response :success
  end

  test "should get edit_cource" do
    get admin_configs_edit_cource_url
    assert_response :success
  end

  test "should get new_school" do
    get admin_configs_new_school_url
    assert_response :success
  end

  test "should get edit_school" do
    get admin_configs_edit_school_url
    assert_response :success
  end

end
