class Score < ApplicationRecord
    belongs_to :answer
    belongs_to :team
    validates :team_id, :answer_id, presence: true
    after_save :update_verified
    before_destroy :update_verified

    private
    def update_verified
        self.answer.verified = !self.answer.verified
        self.answer.save!
    end
end