class AddTeamIdToAnswer < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :team_id, :integer
    add_index :answers, :team_id
  end
end
