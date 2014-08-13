class EmployeeBelongToDivision < ActiveRecord::Migration
  def change
    change_table(:employees) do |t|
      t.belongs_to :divisions
    end
  end
end
