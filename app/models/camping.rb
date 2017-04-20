class Camping < ApplicationRecord
  has_attachment :photo
  geocoded_by :direction
  after_validation :geocode, if: :direction_changed?
  belongs_to :user
  has_many :bookings

end
