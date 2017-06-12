json.array!(@tipo_destilados) do |tipo_destilado|
  json.extract! tipo_destilado, :id, :nombre
  json.url tipo_destilado_url(tipo_destilado, format: :json)
end
