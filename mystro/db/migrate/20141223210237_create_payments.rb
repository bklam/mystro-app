class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :student_id
      t.integer :lesson_id
      t.integer :amount
      t.datetime :date
      t.string :method

      t.timestamps
    end
  end
end
