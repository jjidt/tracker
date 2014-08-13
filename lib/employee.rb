class Employee < ActiveRecord::Base

  has_many :projects, through: :employee_project
end
