class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, uniqueness: true 
end
