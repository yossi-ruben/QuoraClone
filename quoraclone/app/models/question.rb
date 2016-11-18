class Question < ApplicationRecord
	has_many :question_subjects
	has_many :subjects, through: :question_subjects
	has_many :answers

	has_many :questionsents

	belongs_to :user

	has_many :votes, as: :votable
end

