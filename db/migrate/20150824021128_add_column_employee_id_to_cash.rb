class AddColumnEmployeeIdToCash < ActiveRecord::Migration
  def change
    add_column :cashes, :employee_id, :integer
    add_index :cashes, :employee_id
  end
end
