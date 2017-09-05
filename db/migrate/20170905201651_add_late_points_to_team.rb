class AddLatePointsToTeam < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :latePoints, :integer, default: 0
  end
end
