class CreateRoom2s < ActiveRecord::Migration[6.0]
  def change
    create_table :room2s do |t|
      t.integer :number
      t.integer :floor
      t.string :room_type
      t.integer :price

      t.timestamps
    end
  end
end
