class Score < ApplicationRecord
    belongs_to :answer
    belongs_to :team
    validates :team_id, :answer_id, presence: true
    
end
