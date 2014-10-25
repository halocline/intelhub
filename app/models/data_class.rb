class DataClass < ActiveRecord::Base
	has_many :roadmap_data_classes
	has_many :roadmaps, through: :roadmap_data_classes
	has_many :data_sources
end
