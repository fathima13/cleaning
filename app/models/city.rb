class City < ApplicationRecord
	has_many :citycleaners
	has_many :cleaners,through: :citycleaners
	validates_associated :citycleaners
end
