class CreateDataItems < ActiveRecord::Migration
  def change
    create_table :data_items do |t|
      t.string :name
      t.integer :data_class_id
      t.integer :data_source_id

      t.timestamps
    end
  end
end
