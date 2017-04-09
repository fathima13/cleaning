class Cleaner < ApplicationRecord
	has_many :bookings
	has_many :customers,through: :bookings
	has_many :citycleaners
	has_many :cities,through: :citycleaners
	validates :name, presence: true
	validates_associated :citycleaners
	validates_associated :bookings

end
