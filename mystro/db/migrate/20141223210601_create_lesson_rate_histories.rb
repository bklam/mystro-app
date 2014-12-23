class CreateLessonRateHistories < ActiveRecord::Migration
  def change
    create_table :lesson_rate_histories do |t|
      t.integer :lesson_type_id
      t.datetime :start_date
      t.datetime :end_time
      t.integer :rate

      t.timestamps
    end
  end
end
