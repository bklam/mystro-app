class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :student_id
      t.integer :family_id
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.date :date_started
      t.date :date_ended
      t.string :email
      t.string :phone
      t.integer :outstanding_balance

      t.timestamps
    end
  end
end
