require 'active_record'
require 'pry'

require './lib/division'
require './lib/employee'
require './lib/project'
require './lib/employee_project'

ActiveRecord::Base.establish_connection(YAML::load(File.open('./db/config.yml'))["development"])


def ws
  puts ""
end

def prompt(text)
  puts(text)
  gets.chomp
end

def clear
  system('clear')
end

def header
puts "****************\n" +
     "Employee Tracker\n" +
     "****************\n"
end

def separator
  puts "##################"
end

def main_menu
  header
  puts "Select choice A > add employee"
  puts "Select choice D > add division"
  puts "Select choice AS > assign employee to division"

  case gets.chomp.upcase
  when 'A'
    add_employee
    clear
    main_menu
  when 'D'
    add_division
    clear
    main_menu
  when 'AS'
    list_employees
    list_divisions
    gets.chomp
    clear
    main_menu
  end
end

def add_employee
  Employee.create(:name => prompt("Enter employee's name"))
end

def add_division
  Division.create(:name => prompt("Enter division's name"))
end

def list_employees
  puts "EMPLOYEES"
  separator
  Employee.all.each { |employee| puts "*" + employee.name}
end

def list_divisions
  puts "DIVISIONS"
  separator
  Division.all.each { |division| puts "*" + division.name}
end

main_menu
