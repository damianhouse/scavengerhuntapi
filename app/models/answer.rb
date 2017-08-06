class Answer < ApplicationRecord
    has_many :scores
    belongs_to :question
    belongs_to :player
    validates :question_id, :player_id, :answerText, presence: true
end