class Booking < ApplicationRecord
  belongs_to :customer
  belongs_to :cleaner
  validate :deadline_is_possible?

 def deadline_is_possible?
    if date.to_s < Date.today.to_s
     errors.add(:date, 'must be greater than today')
   end
 end
end
