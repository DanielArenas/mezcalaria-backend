json.array!(@tipo_mezcales) do |tipo_mezcal|
  json.extract! tipo_mezcal, :id, :nombre
  json.url tipo_mezcal_url(tipo_mezcal, format: :json)
end
