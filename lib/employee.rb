class Employee < ActiveRecord::Base
  has_many :employee_projects
  has_many :projects, through: :employee_projects

  def add_project(project, contribution = nil)
    self.projects << project
    temp = EmployeeProject.where(:employee_id => self.id, :project_id => project.id).first
    temp.employee_contribution = contribution
    temp.save
  end

  def contributions
    EmployeeProject.where(:employee_id => self.id)
  end
end
