class AddSponsorBonusToTeam < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :sponsorBonus, :integer, default: 0
  end
end
