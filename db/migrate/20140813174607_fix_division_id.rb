class FixDivisionId < ActiveRecord::Migration
  def change
    change_table(:employees) do |t|
      t.belongs_to :division
    end
  end
end
