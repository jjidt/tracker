require 'active_record'
require 'rspec'
require 'pry'

require 'division'
require 'employee'
require 'project'
require 'employee_project'

ActiveRecord::Base.establish_connection(YAML::load(File.open('./db/config.yml'))["test"])

RSpec.configure do |config|
  config.after(:each) do
    Employee.all.each { |task| task.destroy }
    Division.all.each { |task| task.destroy }
  end
end
