json.array!(@tipo_magueyes) do |tipo_maguey|
  json.extract! tipo_maguey, :id, :nombre
  json.url tipo_maguey_url(tipo_maguey, format: :json)
end
