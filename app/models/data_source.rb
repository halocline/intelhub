class DataSource < ActiveRecord::Base
	mount_uploader :data_file, DataUploader
end
