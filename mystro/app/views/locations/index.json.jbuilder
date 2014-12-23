json.array!(@locations) do |location|
  json.extract! location, :id, :description, :address, :city, :state, :zip
  json.url location_url(location, format: :json)
end
