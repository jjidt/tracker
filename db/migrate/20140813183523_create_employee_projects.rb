class CreateEmployeeProjects < ActiveRecord::Migration
  def change
    create_table :employee_projects do |t|
      t.belongs_to :employees
      t.belongs_to :divisions

      t.timestamps
    end
  end
end
