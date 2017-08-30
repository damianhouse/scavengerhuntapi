class AddGameIdToAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :game_id, :integer
    add_index :answers, :game_id
  end
end
