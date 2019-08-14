require 'test_helper'

class Staffs::StudentCounselsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get staffs_student_counsels_new_url
    assert_response :success
  end

  test "should get edit" do
    get staffs_student_counsels_edit_url
    assert_response :success
  end

  test "should get show" do
    get staffs_student_counsels_show_url
    assert_response :success
  end

  test "should get index" do
    get staffs_student_counsels_index_url
    assert_response :success
  end

  test "should get create" do
    get staffs_student_counsels_create_url
    assert_response :success
  end

  test "should get update" do
    get staffs_student_counsels_update_url
    assert_response :success
  end

end
