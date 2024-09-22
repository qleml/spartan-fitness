class Exercise < ApplicationRecord
  belongs_to :exercise_category

  validates :name, presence: true, length: { maximum: 70 }
  validates :exercise_category, presence: true
end
