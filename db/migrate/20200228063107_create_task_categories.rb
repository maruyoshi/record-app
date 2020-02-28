class CreateTaskCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :task_categories do |t|
      t.integer  :category_id
      t.integer  :task_id

      t.timestamps
    end
  end
end
