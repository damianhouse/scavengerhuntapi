class TeamSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :score, :name, :teamType, :questions, :sponsorBonus, :latePoints
  has_many :answers
end
