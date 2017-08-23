class Game < ApplicationRecord
    has_many :teams, dependent: :destroy
    has_many :questions, dependent: :destroy
    validates :name, :startTime, :endTime, presence: true
end