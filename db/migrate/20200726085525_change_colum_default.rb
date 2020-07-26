class ChangeColumDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :rooms ,:smoke, from: nil, to: false
  end
end
