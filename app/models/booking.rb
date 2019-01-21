class Booking < ApplicationRecord

	has_many :slots, through: :booking_slots
	has_many :booking_slots
	belongs_to :user



end
