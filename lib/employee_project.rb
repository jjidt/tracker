class Employee_Project < ActiveRecord::Base
  has_many :employees
  has_many :projects
end
