require 'test_helper'

class Staffs::MentorsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get staffs_mentors_edit_url
    assert_response :success
  end

  test "should get update" do
    get staffs_mentors_update_url
    assert_response :success
  end

  test "should get grade_update" do
    get staffs_mentors_grade_update_url
    assert_response :success
  end

  test "should get retire" do
    get staffs_mentors_retire_url
    assert_response :success
  end

end
