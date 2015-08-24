class CreateTfls < ActiveRecord::Migration
  def change
    create_table :tfls do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
