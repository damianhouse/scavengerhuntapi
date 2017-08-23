class Score < ApplicationRecord
    belongs_to :answer
    belongs_to :team
    validates :team_id, :answer_id, presence: true
    after_save :update_team_score
    before_destroy do
        self.team.score -= self.score
        self.team.save!
    end

    private
    def update_team_score
        self.team.score = Score.where(team: self.team).sum(:score)
        self.team.save!
    end
end
