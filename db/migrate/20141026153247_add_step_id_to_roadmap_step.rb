class AddStepIdToRoadmapStep < ActiveRecord::Migration
  def change
    add_column :roadmap_steps, :step_id, :integer
  end
end
