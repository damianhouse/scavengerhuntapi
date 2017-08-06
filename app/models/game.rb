class Game < ApplicationRecord
    has_many :teams
    has_many :questions
    validates :name, presence: true
end