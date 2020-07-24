class CreateScaffoldResevations < ActiveRecord::Migration[6.0]
  def change
    create_table :scaffold_resevations do |t|
      t.date :start_stay
      t.date :end_stay
      t.references :customer_scaffold, null: false, foreign_key: true
      t.references :room2, null: false, foreign_key: true

      t.timestamps
    end
  end
end
