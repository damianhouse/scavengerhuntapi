class AddStartTimeToGame < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :startTime, :datetime
  end
end
