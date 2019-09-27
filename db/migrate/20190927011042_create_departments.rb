class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.string :sales
      t.string :finance
      t.string :inventory

      t.timestamps
    end
  end
end
