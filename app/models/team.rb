class Team < ApplicationRecord
    belongs_to :game, dependent: :destroy
    has_many :players
    has_many :scores
    validates :name, presence: true
end