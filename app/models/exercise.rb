class Exercise < ApplicationRecord
  belongs_to :exercise_category, optional: true

  validates :name, presence: true, length: { maximum: 255 }
end
