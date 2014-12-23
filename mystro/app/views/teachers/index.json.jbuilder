json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :first_name, :last_name, :location_id, :email, :phone
  json.url teacher_url(teacher, format: :json)
end
