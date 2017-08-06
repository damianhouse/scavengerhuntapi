class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :pointValue, :questionText, :isSponser, :isImg, :isShortAns, :isItem, :isVariable, :isBonus
end
