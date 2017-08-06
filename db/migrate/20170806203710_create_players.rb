class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.integer :team_id
      t.integer :user_id

      t.timestamps
    end
    add_index :players, :team_id
    add_index :players, :user_id
  end
end
