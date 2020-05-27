class Rental < ApplicationRecord
  validates :start_at, :stop_at, presence: true
  belongs_to :suit
  belongs_to :customer, class_name: "User"

end
