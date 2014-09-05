class Problem < ActiveRecord::Base
	has_many :questions
	has_one :roadmap
	belongs_to :problem_class
end
