class AddTeamTypeToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :teamType, :string
  end
end
