class Step < ActiveRecord::Base
	has_many :roadmap_steps
	has_many :roadmaps, through: :roadmap_steps
end
