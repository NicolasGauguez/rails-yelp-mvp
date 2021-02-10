class Review < ApplicationRecord
  belongs_to :restaurant
  VALID_RATINGS = [0, 1, 2, 3, 4, 5]

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: VALID_RATINGS }, numericality: { only_integer: true }
end
