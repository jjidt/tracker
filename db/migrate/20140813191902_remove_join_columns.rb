class RemoveJoinColumns < ActiveRecord::Migration
  def change
    remove_column :employee_projects, :employees_id
    remove_column :employee_projects, :division_id
    remove_column :employee_projects, :divisions_id

    change_table :employee_projects do |t|
      t.belongs_to :employee_project
    end
  end
end
