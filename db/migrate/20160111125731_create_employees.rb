class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :age
      t.text :residential_address
      t.text :permanenet_address

      t.timestamps null: false
    end
  end
end
