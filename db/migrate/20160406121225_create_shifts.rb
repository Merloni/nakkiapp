class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.integer :task_id
      t.integer :user_id
      t.integer :hour

      t.timestamps null: false
    end
  end
end
