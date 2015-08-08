json.array!(@news) do |news|
  json.extract! news, :id, :user_id, :category_id, :province_id, :title, :body, :date_time, :image, :status
  json.url news_url(news, format: :json)
end
