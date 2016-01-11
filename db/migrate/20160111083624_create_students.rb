class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :father_name
      t.string :mother_name
      t.string :contact_1
      t.string :contact_2
      t.string :relegion
      t.string :cast
      t.string :category
      t.string :admission_number
      t.date :admission_date
      t.string :enrollment_number
      t.integer :age
      t.date :date_of_birth
      t.text :permanent_address
      t.text :residential_address
      t.string :nationality
      t.string :blood_group

      t.timestamps null: false
    end
  end
end
