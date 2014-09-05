class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :name
      t.integer :problem_class_id
      t.integer :problem_roadmap_id
      t.integer :parent_problem_id

      t.timestamps
    end
  end
end
