class CreateRoadmapSteps < ActiveRecord::Migration
  def change
    create_table :roadmap_steps do |t|
      t.integer :roadmap_id
      t.integer :order
      t.text :step

      t.timestamps
    end
  end
end
