class Review < ApplicationRecord
  belongs_to :booking
  validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
end
