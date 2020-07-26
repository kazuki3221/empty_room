class CreateResevations < ActiveRecord::Migration[6.0]
  def change
    create_table :resevations do |t|
      t.date :start_stay
      t.date :end_start
      t.references :room, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
