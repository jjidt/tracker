class Employee < ActiveRecord::Base
  has_many :projects, through: :employee_projects
end
