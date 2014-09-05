class CreateQuestionInstances < ActiveRecord::Migration
  def change
    create_table :question_instances do |t|
      t.integer :question_id
      t.integer :user_id

      t.timestamps
    end
  end
end
