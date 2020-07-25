class AddSidesToRoom2s < ActiveRecord::Migration[6.0]
  def change
    add_column :room2s, :side, :string
  end
end
