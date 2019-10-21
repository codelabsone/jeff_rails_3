class AddFieldsToDepartments < ActiveRecord::Migration[5.1]
  def change
    add_column :departments, :name, :string
    add_column :departments, :description, :string
  end
end
