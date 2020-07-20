class CreateResevations < ActiveRecord::Migration[6.0]
  def change
    create_table :resevations do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
