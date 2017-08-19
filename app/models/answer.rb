class Answer < ApplicationRecord
	has_many :scores
	belongs_to :question
	belongs_to :player
	validates :question_id, :player_id, :answerText, presence: true
	# This method associates the attribute ":image" with a file attachment
	has_attached_file :image, styles: {
			thumb: '100x100>',
			square: '200x200#',
			medium: '300x300>'
	}

	# Validate the attached image is image/jpg, image/png, etc
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end