class Team < ApplicationRecord
    belongs_to :game, dependent: :destroy
    has_many :players
    has_many :scores
    has_many :answers, through: :players
    validates :name, :game_id, presence: true

    def questions
        @questions = Question.all.map{ |question| question.answers.where(team_id: self.id) ? question.answer.where(team_id: self.id) : question }
    end
end