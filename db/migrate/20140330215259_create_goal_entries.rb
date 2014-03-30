class CreateGoalEntries < ActiveRecord::Migration
  def change
    create_table :goal_entries do |t|
      t.integer :goal_id
      t.boolean :status

      t.timestamps
    end
  end
end
