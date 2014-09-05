class Question < ActiveRecord::Base
	has_many :question_instances
	has_many :users, through: :question_instances
	belongs_to :problem
end
