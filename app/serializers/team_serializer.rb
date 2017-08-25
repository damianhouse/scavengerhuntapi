class TeamSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :score, :name, :teamType, :questions
  has_many :answers
end
