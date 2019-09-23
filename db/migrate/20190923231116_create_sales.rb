class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
