class AddTypeToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :type, :string
  end
end
