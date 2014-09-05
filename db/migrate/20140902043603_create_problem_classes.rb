class CreateProblemClasses < ActiveRecord::Migration
  def change
    create_table :problem_classes do |t|
      t.string :name

      t.timestamps
    end
  end
end
