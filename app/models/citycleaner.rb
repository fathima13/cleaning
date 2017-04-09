class Citycleaner < ApplicationRecord
  belongs_to :cleaner
  belongs_to :city
end
