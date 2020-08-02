class Room < ApplicationRecord
  has_many :resevation
  has_many :sale
end
