class Room < ApplicationRecord
  has_many :resevations
  has_many :sale
end
