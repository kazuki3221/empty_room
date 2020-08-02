class Resevation < ApplicationRecord
  belongs_to :room
  belongs_to :customer
  belongs_to :user

  validate :start_stay_should_be_before_end_stay

  validate :start_stay_cannot_be_changed
  validate :end_stay_cannot_be_changed
 #validates :start_stay, stay_duplication: true
  #validates :end_stay,   stay_duplication: true
  validate :resevation_stay_should_not_overlap, if: :new_or_start_or_end_stay_changed


private
def start_stay_should_be_before_end_stay
  return unless start_stay && end_stay

  if start_stay > end_stay
    errors.add(:start_stay, 'よりも前に設定してください')
  end
end


def after_start_stay?
  start_stay.present? && !new_record? && start_stay_in_database <= Time.zone.now
end

def start_stay_cannot_be_changed
  if after_start_stay?
    if will_save_change_to_start_stay?
      errors.add(:start_stay, 'は変更できません。宿泊開始日程を過ぎています')
    end
  end
end

def end_stay_cannot_be_changed
  if after_start_stay?
    if will_save_change_to_end_stay?
      errors.add(:end_stay, 'は変更できません。宿泊開始日程を過ぎています')
    end
  end
end

def new_or_start_or_end_stay_changed
  new_record? || will_save_change_to_start_stay? || will_save_change_to_end_stay?
end

def resevation_stay_should_not_overlap
  return unless start_stay && end_stay

  if Resevation.where(room_id: room.id)
    Resevation.where('start_stay < ?', end_stay)
    Resevation.where('end_stay > ?', start_stay)
    Resevation.where.not(id: id).exists?
    Resevation.where.not(customer_id: customer_id).exists?
    errors.add(:base, '他の予約と重複しています。')
    end
  end
end
