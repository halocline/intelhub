class Roadmap < ActiveRecord::Base
	belongs_to :problem
	has_many :problems
	has_many :roadmap_steps
end
