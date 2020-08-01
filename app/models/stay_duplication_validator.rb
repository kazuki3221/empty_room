# 宿泊期間に重複がないかを検証するバリデーター
class StayDuplicationValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    # 新規登録する期間
    new_start_date = record.start_stay
    new_end_date   = record.end_stay

    return unless new_start_date.present? && new_end_date.present?

     # 重複する期間を検索(編集時は自期間を除いて検索)
    if record.id.present?
      not_own_periods = StayDuplicationValidator.where('id NOT IN (?) AND start_stay <= ? AND end_stay >= ?', record.id, new_end_date, new_start_date)
    else
      not_own_periods = StayDuplicationValidator.where('start_stay <= ? AND end_stay >= ?', new_end_date, new_start_date)
    end

    record.errors.add(attribute, 'に重複があります') if not_own_periods.present?
  end
end
