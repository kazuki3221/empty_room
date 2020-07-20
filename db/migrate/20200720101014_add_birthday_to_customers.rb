class AddBirthdayToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :birthday, :date
  end
end
