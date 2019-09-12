class AddFieldsToDepartments < ActiveRecord::Migration[5.1]
  def change
    add_column :departments, :name, :text
  end
end
