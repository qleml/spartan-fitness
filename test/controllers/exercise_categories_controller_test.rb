require "test_helper"

class ExerciseCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exercise_categories_index_url
    assert_response :success
  end
end
