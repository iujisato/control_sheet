class AddColumnCompanyIdToCash < ActiveRecord::Migration
  def change
    add_column :cashes, :company_id, :integer
    add_index :cashes, :company_id
  end
end
