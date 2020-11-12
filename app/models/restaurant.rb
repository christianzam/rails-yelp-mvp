class Restaurant < ApplicationRecord
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian), message: "%{value} is not a valid category" }
  validates :name, :address, presence: true
  has_many :reviews, dependent: :destroy
end
