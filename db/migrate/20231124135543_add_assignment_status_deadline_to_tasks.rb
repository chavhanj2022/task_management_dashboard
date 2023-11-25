class AddAssignmentStatusDeadlineToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :status, :string
    add_column :tasks, :deadline, :datetime
  end
end
