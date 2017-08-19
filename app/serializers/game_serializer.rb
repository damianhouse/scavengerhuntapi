class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :startTime, :endTime
end
