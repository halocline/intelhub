class CreateRoadmaps < ActiveRecord::Migration
  def change
    create_table :roadmaps do |t|
      t.integer :problem_id
      t.string :required_resources

      t.timestamps
    end
  end
end
