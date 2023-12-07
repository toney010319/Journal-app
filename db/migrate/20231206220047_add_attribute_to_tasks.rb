class AddAttributeToTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :name, :string
    add_column :tasks, :description, :text
    add_column :tasks, :deadline, :date
    add_column :tasks, :status, :text
  end
end
