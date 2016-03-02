json.array!(@origins) do |origin|
  json.extract! origin, :id, :country, :address
  json.url origin_url(origin, format: :json)
end
