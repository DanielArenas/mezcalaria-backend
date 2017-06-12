json.array!(@mezcales) do |mezcal|
  json.extract! mezcal, :id, :nombre, :tipo_mezcal_id, :tipo_maguey_id, :tipo_destilado_id, :marca_id, :precio_promedio, :zona_produccion_id, :maestro_mezcalero, :certificado, :lugares_venta, :comentario_maestro

  json.fotografia mezcal.fotografia.url(:thumb)
  json.url mezcal_url(mezcal, format: :json)

  json.marca  mezcal.marca.nombre
  json.maguey mezcal.tipo_maguey.nombre
  json.zona   mezcal.zona_produccion.localidad
end
