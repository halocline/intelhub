class RemoveStepFromRoadmapSteps < ActiveRecord::Migration
  def change
    remove_column :roadmap_steps, :step, :text
  end
end
