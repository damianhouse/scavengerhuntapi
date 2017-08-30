class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :question_id, :player_id, :team_id, :game_id, :sponsorImgUrl, :image_url, :lat, :long, :answerText, :hasItem, :verified, :scores
end
