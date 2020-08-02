class Resevation < ApplicationRecord
  belongs_to :room
  belongs_to :customer
  belongs_to :user

  validates :start_stay, presence: true
  validates :end_stay, presence: true

  validate :start_stay_should_be_before_end_stay
  validate :start_stay_should_be_after_current, if: :new_or_start_stay_changed

  validate :start_stay_cannot_be_changed
  validate :end_stay_cannot_be_changed
  validate :resevation_stay_should_not_overlap, if: :new_or_start_or_end_stay_changed


private
def start_stay_should_be_before_end_stay
  return unless start_stay && end_stay

  if start_stay > end_stay
    errors.add(:start_stay, 'よりも前に設定してください')
  end
end

def new_or_start_stay_changed
  start_stay.present? && (new_record? || will_save_change_to_start_stay?)
end

def start_stay_should_be_after_current
  if start_stay < Date.today
    errors.add(:start_stay, 'は前日よりも後に設定してください')
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

  if Resevation.where.not(id: id)
               .where(room_id: room_id)
               .where('start_stay <= ?', end_stay)
               .where('end_stay >= ?', start_stay).exists?
    errors.add(:base, '他の予約と重複しています。')
    end
  end
end
