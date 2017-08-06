class Answer < ApplicationRecord
    has_many :scores
    belongs_to :question
    belongs_to :player
end