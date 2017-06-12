json.array!(@municipios) do |municipio|
  json.extract! municipio, :id, :nombre, :estado_id, :region_id
  json.url municipio_url(municipio, format: :json)
end
