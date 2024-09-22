class Exercise < ApplicationRecord
  belongs_to :exercise_category

  validates :name, presence: true, length: { maximum: 255 }
  validates :exercise_category, presence: true

end
