json.array!(@ratings) do |rating|
  json.extract! rating, :id, :note, :explanation
  json.url rating_url(rating, format: :json)
end
