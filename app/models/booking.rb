class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :animal

  validates :booking_date, presence: true
end
