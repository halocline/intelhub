class RoadmapDataClass < ActiveRecord::Base
	belongs_to :roadmap
	belongs_to :data_class
end
