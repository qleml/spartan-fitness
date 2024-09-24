class Exercise < ApplicationRecord
  belongs_to :exercise_category

  has_many :workout_exercises
  has_many :workouts, through: :workout_exercises

  validates :name, presence: true, length: { maximum: 64 }
  validates :exercise_category, presence: true
end
