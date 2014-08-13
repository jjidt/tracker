require 'spec_helper'

describe 'Division' do
  it "lists all divisions in the company" do
    test_division = Division.create(:name => 'shirts')
    test_division2 = Division.create(:name => 'socks')
    expect(Division.all.first.name).to eq 'shirts'
  end

  describe '.employees' do
    it "lists all the employees in a division" do
      test_division = Division.create(:name => 'shirts')
      test_division_id = test_division.id
      test_employee = Employee.create(:name => 'bob', :divisions_id => test_division_id)
      test_employee2 = Employee.create(:name => 'steve', :divisions_id => test_division_id)

    end
end
