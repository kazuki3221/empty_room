class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :number
      t.integer :floor
      t.string :room_type
      t.string :side
      t.boolean :smoke

      t.timestamps
    end
  end
end
