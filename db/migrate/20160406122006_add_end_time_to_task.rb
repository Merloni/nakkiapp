class AddEndTimeToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :end_time, :datetime
  end
end
