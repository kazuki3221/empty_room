class Customer < ApplicationRecord
  before_save { email.downcase! }
  validates :name_first,  presence: true, length: { maximum: 50 }
  validates :name_first_kana,  presence: true, length: { maximum: 50 }
  validates :name_last,  presence: true, length: { maximum: 50 }
  validates :name_last_kana,  presence: true, length: { maximum: 50 }
  validates :tel, presence:true, length: { maximum: 11 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 250 },
  format: { with: VALID_EMAIL_REGEX },
  uniqueness: true
end
