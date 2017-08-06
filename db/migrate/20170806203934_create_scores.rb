class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.integer :team_id
      t.integer :answer_id
      t.integer :score, default: 0

      t.timestamps
    end
    add_index :scores, :team_id
    add_index :scores, :answer_id
  end
end
