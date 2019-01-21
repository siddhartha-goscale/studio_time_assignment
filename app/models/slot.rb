class Slot < ApplicationRecord

	has_many :booking_slots
	has_many :bookings, through: :booking_slots

end
