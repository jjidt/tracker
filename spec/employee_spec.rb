require 'spec_helper'

describe 'Employee' do
  it "lists all employees in the company" do
    bob = Employee.create(:name => "Bob")
    expect(Employee.all).to eq [bob]
  end

  it "takes a division_id" do
    test_division = Division.create(:name => 'pants')
    test_division_id = test_division.id
    test_employee = Employee.create(:name => "Bob", :divisions_id => test_division_id)
    expect(Employee.all.first.divisions_id).to eq test_division_id
  end
end
