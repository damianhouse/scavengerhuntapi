class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :startTime, :endTime, :answers, :questions
end
