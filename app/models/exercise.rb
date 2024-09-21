class Exercise < ApplicationRecord
  belongs_to :exercise_type

  validates :name, presence: true, length: { maximum: 255 }
  validates :exercise_type, presence: true
end
