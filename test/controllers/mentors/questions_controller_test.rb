require 'test_helper'

class Mentors::QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mentors_questions_index_url
    assert_response :success
  end

  test "should get done" do
    get mentors_questions_done_url
    assert_response :success
  end

  test "should get new_answer" do
    get mentors_questions_new_answer_url
    assert_response :success
  end

end
