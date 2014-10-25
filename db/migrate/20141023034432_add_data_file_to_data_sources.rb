class AddDataFileToDataSources < ActiveRecord::Migration
  def change
    add_column :data_sources, :data_file, :string
  end
end
