class Employee < ActiveRecord::Base
  has_many :employee_projects
  has_many :projects, through: :employee_projects

  def add_project(project, contribution = nil)
    self.projects << project
    temp = EmployeeProject.where(:employee_id => self.id, :project_id => project.id).first
    temp.employee_contribution = contribution
    temp.save
  end

  def contributions_by_project_name(attributes)
    project_id = Project.where(:name => attributes[:name]).first.id
    EmployeeProject.where(:employee_id => self.id, :project_id => project_id)
  end
end
