class AddBonusValueToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :bonusValue, :integer
  end
end
