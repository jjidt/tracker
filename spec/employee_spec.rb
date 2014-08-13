require 'spec_helper'

describe 'Employee' do
  it "lists all employees in the company" do
    bob = Employee.create(:name => "Bob")
    expect(Employee.all).to eq [bob]
  end

  it "takes a division_id" do
    test_division = Division.create(:name => 'pants')
    test_division_id = test_division.id
    test_employee = Employee.create(:name => "Bob", :division_id => test_division_id)
    expect(Employee.all.first.division_id).to eq test_division_id
  end

  it "allows you to add projects to an employee" do
    test_employee = Employee.create(:name => 'steve')
    test_project = Project.create(:name => 'file_documents')
    test_project2 = Project.create(:name => 'wash_dishes')
    test_employee.projects << test_project
    test_employee.projects << test_project2
    expect(test_employee.projects).to eq [test_project, test_project2]
  end

  it "allows you to access an employees contribution history" do
    test_employee = Employee.create(:name => 'steve')
    test_project = Project.create(:name => 'file_documents')
    test_project2 = Project.create(:name => 'wash_dishes')
    test_employee.add_project(test_project, "did it")
    test_employee.add_project(test_project2, "blah blah blah")
    expect(test_employee.contributions.length).to eq 2
  end
end
