class Question < ApplicationRecord
	has_many :question_subjects
	has_many :subjects, through: :question_subjects
	has_many :answers

	belongs_to :user
end
