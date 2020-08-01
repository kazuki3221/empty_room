class RenameEndstartColumnToResevations < ActiveRecord::Migration[6.0]
  def change
    rename_column :resevations,:end_start, :end_stay
  end
end
