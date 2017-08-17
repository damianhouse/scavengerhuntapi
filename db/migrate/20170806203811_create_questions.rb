class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :game_id
      t.integer :pointValue, default: 0
      t.string :questionText
      t.boolean :isSponsor, default: false
      t.boolean :isImg, default: false
      t.boolean :isShortAns, default: false
      t.boolean :isItem, default: false
      t.boolean :isVariable, default: false
      t.boolean :isBonus, default: false

      t.timestamps
    end
    add_index :questions, :game_id
  end
end
