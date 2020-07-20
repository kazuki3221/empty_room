class Room < ApplicationRecord
  validates :room_type, presence: true
  validates :floor, presence: true
  validates :number, presence: true
end
