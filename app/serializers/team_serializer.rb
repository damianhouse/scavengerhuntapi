class TeamSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :score, :name, :type, :questions
  has_many :answers, through: :players
end
