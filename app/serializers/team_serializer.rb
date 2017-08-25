class TeamSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :score, :name, :questions, :type
  class AnswerSerializer < ActiveModel::Serializer
    attributes :id, :question_id, :player_id, :image_url, :lat, :long, :answerText, :hasItem, :verified
  end
end
