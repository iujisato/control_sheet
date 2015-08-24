class AddColumnTflIdToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :tfl_id, :integer
    add_index :employees, :tfl_id
  end
end
