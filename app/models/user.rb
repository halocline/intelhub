class User < ActiveRecord::Base
	belongs_to :account
	has_many :question_instances
	has_many :questions, through: :question_instances

	validates_presence_of :username
	validates_presence_of :account_id
end
