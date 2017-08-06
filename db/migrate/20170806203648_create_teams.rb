class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.integer :game_id
      t.float :score, default: 0.0
      t.string :name

      t.timestamps
    end
    add_index :teams, :game_id
  end
end
