class Chef < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :category
  validates :name, :description, :price_range, :location, presence: true
  validates :name, uniqueness: true
  validates :description, length: { minimum: 20 }
end
