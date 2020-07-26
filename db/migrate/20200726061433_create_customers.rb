class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :first_name
      t.string :first_name_kana
      t.string :last_name
      t.string :last_name_kana
      t.string :tel
      t.text :placeholder
      t.date :birthday

      t.timestamps
    end
  end
end
