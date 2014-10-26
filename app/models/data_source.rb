class DataSource < ActiveRecord::Base
	belongs_to :data_class

	mount_uploader :data_file, DataUploader
end
