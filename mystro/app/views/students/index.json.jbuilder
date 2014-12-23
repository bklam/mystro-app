json.array!(@students) do |student|
  json.extract! student, :id, :student_id, :family_id, :teacher_id, :first_name, :last_name, :date_of_birth, :date_started, :date_ended, :email, :phone, :outstanding_balance
  json.url student_url(student, format: :json)
end
