class AddTimeToTask < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :deadline, :time
  end
end
