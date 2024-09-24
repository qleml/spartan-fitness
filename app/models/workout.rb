class Workout < ApplicationRecord
  belongs_to :user
  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises

  before_save :set_default_name

  private

  def set_default_name
    if self.title.blank?
      workout_count = user.workouts.count + 1
      self.title = "New Workout #{workout_count}"
    end
  end
end
