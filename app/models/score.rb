class Score < ApplicationRecord
    has_many :answers, dependent: :destroy
    belongs_to :team
    validates :team_id, :answer_id, presence: true
end
