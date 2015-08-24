class AddCompanyIdToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :company_id, :integer
    add_index :employees, :company_id
  end
end
