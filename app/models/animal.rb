class Animal < ApplicationRecord
  has_many :bookings
  has_many :users

  belongs_to :user, through: :bookings
end
