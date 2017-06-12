json.extract! @mezcal, :id, :nombre, :tipo_mezcal_id, :tipo_maguey_id, :tipo_destilado_id, :marca_id, :precio_promedio, :zona_produccion_id, :maestro_mezcalero, :certificado, :lugares_venta, :comentario_maestro, :created_at, :updated_at

json.tipo @mezcal.tipo_mezcal.nombre
json.maguey @mezcal.tipo_maguey.nombre
json.fotografia @mezcal.fotografia.url
json.marca @mezcal.marca.nombre
json.destilado @mezcal.tipo_destilado.nombre
json.zona @mezcal.zona_produccion.localidad
json.logotipo_marca @mezcal.marca.logotipo.url(:thumb)
