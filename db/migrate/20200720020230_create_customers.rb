class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :name_first
      t.string :name_first_kana
      t.string :name_last
      t.string :name_last_kana
      t.string :tel
      t.text :placeholder

      t.timestamps
    end
  end
end
