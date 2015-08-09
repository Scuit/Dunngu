json.array!(@publicities) do |publicity|
  json.extract! publicity, :id, :title, :body
  json.url publicity_url(publicity, format: :json)
end
