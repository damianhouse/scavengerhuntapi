class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :team_id, :user_id
end
