class FixNaming < ActiveRecord::Migration
  def change

    change_table :employee_projects do |t|
      t.belongs_to :employee
      t.belongs_to :division
    end
  end
end
