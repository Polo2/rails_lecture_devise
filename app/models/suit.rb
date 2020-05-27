class Suit < ApplicationRecord
  validates :name, :description, presence: true
  validates :price_per_day, numericality: { only_integer: true }

  belongs_to :owner, class_name: "User"
  has_many :rentals
  has_many :customers, through: :rentals
end
