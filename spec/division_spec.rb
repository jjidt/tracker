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
      Employee.create(:name => 'bob', :division_id => test_division_id)
      Employee.create(:name => 'steve', :division_id => test_division_id)
      expect(Division.employees(:name => 'shirts').length).to eq 2
    end
  end
end
