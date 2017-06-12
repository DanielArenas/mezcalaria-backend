json.array!(@regiones) do |region|
  json.extract! region, :id, :nombre, :estado_id
  json.url region_url(region, format: :json)
end
