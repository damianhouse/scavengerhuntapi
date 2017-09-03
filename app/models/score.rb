class Score < ApplicationRecord
    belongs_to :answer
    belongs_to :team
    validates :team_id, :answer_id, presence: true
    after_save :update_verified

    before_destroy do
        self.answer.verified = false
        self.answer.save!
    end

    private
    def update_verified
        self.answer.verified = true
        self.answer.save!
    end
end