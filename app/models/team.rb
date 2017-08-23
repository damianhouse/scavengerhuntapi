class Team < ApplicationRecord
    belongs_to :game
    has_many :players, dependent: :destroy
    has_many :scores
    has_many :answers, through: :players
    validates :name, :game_id, presence: true

    def questions
        @questions = Question.all
    end
end