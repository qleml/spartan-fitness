class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 16 }
end
