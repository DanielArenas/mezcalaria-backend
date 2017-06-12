json.array!(@zona_producciones) do |zona_produccion|
  json.extract! zona_produccion, :id, :localidad, :municipio_id
  json.url zona_produccion_url(zona_produccion, format: :json)
end
