json.extract! @news, :id, :tittle, :description, :video, :photo, :created_at, :updated_at

json.photo @news.photo.url
json.video @news.video.url
