json.array!(@wines) do |wine|
  json.extract! wine, :id, :name, :description
  json.url wine_url(wine, format: :json)
end
