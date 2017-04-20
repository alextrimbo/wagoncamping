class Camping < ApplicationRecord
  geocoded_by :direction
  after_validation :geocode, if: :direction_changed?
  belongs_to :user
  has_many :bookings, dependent: :destroy
end
