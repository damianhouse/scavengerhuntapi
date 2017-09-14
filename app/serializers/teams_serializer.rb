class TeamsSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :score, :name, :teamType, :sponsorBonus, :latePoints
end
