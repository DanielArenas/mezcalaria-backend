json.extract! @news, :id, :tittle, :description, :video, :photo

json.photo @news.photo.url
