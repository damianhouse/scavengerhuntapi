class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :question_id, :player_id, :image, :lat, :long, :answerText, :hasItem, :verified
end
