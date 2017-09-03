class Answer < ApplicationRecord
	has_many :scores, dependent: :destroy
	belongs_to :question
	belongs_to :player
	belongs_to :game
	validates :question_id, :player_id, :team_id, :game_id, presence: true
	validate :team_has_only_one_answer_per_question, on: :create
	# This method associates the attribute ":image" with a file attachment
	has_attached_file :image, styles: {
			original: {convert_options: '-auto-orient'}
	} 

	# Validate the attached image is image/jpg, image/png, etc
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	def team_has_only_one_answer_per_question
		if Answer.where("question_id = ? AND team_id = ?", self.question_id, self.team_id).exists?
			errors.add(:team_id, "has already answered this question")
		end
	end

	def image_url
		self.image ? self.image.url : nil
	end
end