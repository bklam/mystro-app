class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.integer :location_id
      t.integer :lesson_type_id
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :total_cost

      t.timestamps
    end
  end
end
