class TeamSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :score, :name, :questions
end
