class Resevation < ApplicationRecord
  belongs_to :room
  belongs_to :customer
  belongs_to :user

  validates :start_stay, stay_duplication: true
  validates :end_stay,   stay_duplication: true
end
