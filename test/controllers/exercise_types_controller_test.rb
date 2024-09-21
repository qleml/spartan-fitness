require "test_helper"

class ExerciseTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exercise_types_index_url
    assert_response :success
  end
end
