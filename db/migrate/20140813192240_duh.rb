class Duh < ActiveRecord::Migration
  def change
    remove_column :employee_projects, :employee_project_id

    change_table :employee_projects do |t|
      t.belongs_to :project
    end
  end
end
