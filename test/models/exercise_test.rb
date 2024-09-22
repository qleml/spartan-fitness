require "test_helper"

class ExerciseTest < ActiveSupport::TestCase
  test "should not save exercise without title" do
    exercise = Exercise.new
    assert_not exercise.save, "Saved the exercise without a title"
  end

  test "should not save exercise without category" do
    exercise = Exercise.new(name: "Test")
    assert_not exercise.save, "Saved the exercise without a category"
  end

  test "should save exercise with title and category" do
    exercise = Exercise.new(name: "Test", exercise_category: exercise_categories(:one))
    assert exercise.save, "Did not save the exercise with title and category"
  end

  test "should not save exercise with title longer than 64 characters" do
    exercise = Exercise.new(name: "a" * 65, exercise_category: exercise_categories(:one))
    assert_not exercise.save, "Saved the exercise with title longer than 64 characters"
  end
end
