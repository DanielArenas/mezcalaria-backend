json.array!(@magueyes) do |maguey|
  json.extract! maguey, :id, :title, :sub_title, :description, :image, :language
  json.image maguey.image.url(:thumb)
  json.image_full maguey.image.url

  json.url maguey_url(maguey, format: :json)
end
