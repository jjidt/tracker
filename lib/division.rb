require 'pry'

class Division < ActiveRecord::Base
  has_many(:employees)

  def self.employees(attributes)
    division_to_find = Division.where(attributes).first
    division_to_find_id = division_to_find.id
    Employee.where(:division_id => division_to_find_id)
  end
end
