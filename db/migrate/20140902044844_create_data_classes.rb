class CreateDataClasses < ActiveRecord::Migration
  def change
    create_table :data_classes do |t|
      t.string :name

      t.timestamps
    end
  end
end
