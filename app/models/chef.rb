class Chef < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings
  belongs_to :category
  belongs_to :user, optional: true
  validates :name, :description, :price_range, :location, presence: true
  validates :name, uniqueness: true
  validates :description, length: { minimum: 20 }
end
