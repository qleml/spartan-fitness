class User < ApplicationRecord
  has_many :workouts
  validates :username, presence: true, length: { maximum: 16 }
end
