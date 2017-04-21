class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :camping

  scope :undeclined, -> { where(status: ['Pending','Accepted']) }

end
