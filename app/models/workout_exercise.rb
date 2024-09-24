class WorkoutExercise < ApplicationRecord
  belongs_to :exercise
  belongs_to :workout
  # belongs_to :set_variation, polymorphic: true
  validates :exercise, presence: true
  validates :workout, presence: true
end
