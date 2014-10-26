class AddDataClassIdToDataSource < ActiveRecord::Migration
  def change
    add_column :data_sources, :data_class_id, :integer
  end
end
