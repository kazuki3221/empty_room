class AddStayDaysToResevations < ActiveRecord::Migration[6.0]
  def change
    add_column :resevations, :start_stay, :date
    add_column :resevations, :end_stay, :date
  end
end
