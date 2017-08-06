class Score < ApplicationRecord
    has_many :answers, dependent: :destroy
    belongs_to :team
end
