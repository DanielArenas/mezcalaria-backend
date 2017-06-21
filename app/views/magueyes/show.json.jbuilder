json.extract! @maguey, :id, :title, :sub_title, :description, :image, :language

json.image_full @maguey.image.url
