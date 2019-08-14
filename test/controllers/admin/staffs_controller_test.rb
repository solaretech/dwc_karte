require 'test_helper'

class Admin::StaffsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_staffs_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_staffs_edit_url
    assert_response :success
  end

  test "should get retire" do
    get admin_staffs_retire_url
    assert_response :success
  end

end
