class User < ApplicationRecord
	has_secure_password

	has_many :user_subjects
	has_many :subjects, through: :user_subjects
	has_many :questions
	has_many :answers

	has_many :sent, :class_name => "QuestionSent", :foreign_key => "sender_id"
	has_many :received, :class_name => "QuestionSent", :foreign_key => "reveiver_id"

    has_many :votes, as: :votable
end

