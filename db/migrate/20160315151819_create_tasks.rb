class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.datetime :start_time
      t.integer :user_id
      t.integer :event_id
      t.integer :type_id

      t.timestamps null: false
    end
  end
end
