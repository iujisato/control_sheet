class RemoveTelephoneFromEmployee < ActiveRecord::Migration
  def change
    remove_column :employees, :telephone, :string
    remove_column :employees, :cellphone, :string
    add_column :employees, :contact, :text
  end
end
