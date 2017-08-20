class Question < ApplicationRecord
    belongs_to :game
    has_many :answers
    validates :questionText, :pointValue, presence: true
end