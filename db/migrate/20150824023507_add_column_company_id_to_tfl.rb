class AddColumnCompanyIdToTfl < ActiveRecord::Migration
  def change
    add_column :tfls, :company_id, :integer
    add_index :tfls, :company_id
  end
end
