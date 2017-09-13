class TeamSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :score, :name, :teamType, :sponsorBonus, :latePoints
  has_many :answers
end
