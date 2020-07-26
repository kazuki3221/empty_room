class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.date :start_stay
      t.date :end_stay
      t.references :customer, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
