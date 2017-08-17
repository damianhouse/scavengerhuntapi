class AddQuestionNumberToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :questionNumber, :integer
  end
end
