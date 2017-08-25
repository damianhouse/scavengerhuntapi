class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :question_id, :player_id, :image_url, :lat, :long, :answerText, :hasItem, :verified
  belongs_to :team
end
