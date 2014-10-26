class Roadmap < ActiveRecord::Base
	belongs_to :problem
	has_many :roadmap_data_classes
	has_many :data_classes, through: :roadmap_data_classes
	has_many :roadmap_steps
	has_many :steps, through: :roadmap_steps
end
