class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :number
      t.integer :floor
      t.string :room_type
      t.boolean :smoke, default: false

      t.timestamps
    end
  end
end
