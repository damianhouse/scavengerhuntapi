class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :pointValue, :questionText, :isSponsor, :isImg, :isShortAns, :isItem, :isVariable, :isBonus, :bonusValue, :questionNumber, :answers
end
