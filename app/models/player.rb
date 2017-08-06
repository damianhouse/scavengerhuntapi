class Player < ApplicationRecord
    has_many :answers
    belongs_to :team, dependent: :destroy
    belongs_to :user, dependent: :destroy
end