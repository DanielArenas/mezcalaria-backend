json.array!(@marcas) do |marca|
  json.extract! marca, :id, :nombre, :logotipo, :direccion, :correo
  json.url marca_url(marca, format: :json)
end
