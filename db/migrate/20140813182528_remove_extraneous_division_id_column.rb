class RemoveExtraneousDivisionIdColumn < ActiveRecord::Migration
  def change
    remove_column :employees, :divisions_id
  end
end
