json.array!(@families) do |family|
  json.extract! family, :id, :family_name, :location_id, :email, :phone, :total_balance
  json.url family_url(family, format: :json)
end
