class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :status
      t.integer :task_list_id

      t.timestamps
    end
  end
end
