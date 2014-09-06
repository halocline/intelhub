class RoadmapStep < ActiveRecord::Base
	belongs_to :roadmap

	validates_presence_of :roadmap_id
end
