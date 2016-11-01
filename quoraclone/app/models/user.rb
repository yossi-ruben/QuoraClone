class User < ApplicationRecord
	has_secure_password

	has_many :user_subjects
	has_many :subjects, through: :user_subjects
	has_many :questions
	has_many :answers
end
