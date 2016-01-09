class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :date_of_birth
      t.string :father_name
      t.string :mother_name
      t.integer :age
      t.string :email
      t.string :contact_1
      t.string :contact_2
      t.text :permanent_address
      t.text :local_address
      t.integer :country_id
      t.integer :user_id
      t.string :blood_group
      t.string :nationality
      t.string :relegion

      t.timestamps null: false
    end
  end
end
