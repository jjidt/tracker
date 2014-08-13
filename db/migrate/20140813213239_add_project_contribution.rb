class AddProjectContribution < ActiveRecord::Migration
  def change
    add_column :employee_projects, :employee_contribution, :varchar

  end
end
