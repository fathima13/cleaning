class Customer < ApplicationRecord
	has_many :bookings
	has_many :cleaners,through: :bookings
		validates_associated :bookings

end
