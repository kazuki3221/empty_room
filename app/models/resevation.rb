class Resevation < ApplicationRecord
  belongs_to :room
  belongs_to :customer
  belongs_to :user
end
