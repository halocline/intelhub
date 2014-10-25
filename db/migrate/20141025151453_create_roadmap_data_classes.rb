class CreateRoadmapDataClasses < ActiveRecord::Migration
  def change
    create_table :roadmap_data_classes do |t|
      t.integer :roadmap_id
      t.integer :data_class_id

      t.timestamps
    end
  end
end
