class TeamSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :score, :name, :type, :questions, :answers  
end
