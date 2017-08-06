class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :team_id, :answer_id, :score
end
