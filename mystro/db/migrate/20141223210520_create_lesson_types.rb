class CreateLessonTypes < ActiveRecord::Migration
  def change
    create_table :lesson_types do |t|
      t.string :description
      t.integer :duration

      t.timestamps
    end
  end
end
