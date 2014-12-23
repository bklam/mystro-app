json.array!(@payments) do |payment|
  json.extract! payment, :id, :student_id, :lesson_id, :amount, :date, :method
  json.url payment_url(payment, format: :json)
end
