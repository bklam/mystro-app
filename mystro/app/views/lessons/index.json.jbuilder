json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :student_id, :teacher_id, :location_id, :lesson_type_id, :date, :start_time, :end_time, :total_cost
  json.url lesson_url(lesson, format: :json)
end
