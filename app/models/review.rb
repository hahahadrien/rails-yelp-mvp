class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, numericality: { only_integer: true }, acceptance: { accept: [0, 1, 2, 3, 4, 5] }
  validates :content, presence: true
end
