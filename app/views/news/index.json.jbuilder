json.array!(@news) do |news|
  json.extract! news, :id, :tittle, :description, :video
  json.date news.created_at.strftime("%d/%m/%Y")
  json.url news_url(news, format: :json)
  json.photo news.photo.url(:thumb)
end
