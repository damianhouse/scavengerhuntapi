class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.integer :player_id
      t.string :image_url
      t.string :lat
      t.string :long
      t.string :answerText
      t.boolean :hasItem, default: false
      t.boolean :verified, default: false

      t.timestamps
    end
    add_index :answers, :question_id
    add_index :answers, :player_id
  end
end
