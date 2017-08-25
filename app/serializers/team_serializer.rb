class TeamSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :score, :name, :type, :questions
  class AnswerSerializer < ActiveModel::Serializer
    attributes :id, :question_id, :player_id, :image_url, :lat, :long, :answerText, :hasItem, :verified
  end
end
