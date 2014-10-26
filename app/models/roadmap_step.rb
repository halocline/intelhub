class RoadmapStep < ActiveRecord::Base
	belongs_to :roadmap
	belongs_to :step

	validates_presence_of :roadmap_id
	validates_presence_of :step_id
end
