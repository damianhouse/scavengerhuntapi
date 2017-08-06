class Question < ApplicationRecord
    belongs_to :game
    validates :questionText, :pointValue, presence: true
end