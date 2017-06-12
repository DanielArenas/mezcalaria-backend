# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rol = Rol.create! nombre: 'admin'
Rol.create! nombre: 'viewer'

Usuario.create! email: 'admin@mail.com', rol: rol, password: 'abc123'

tipo_mezcal = TipoMezcal.create nombre: 'Minero'

tipo_maguey = TipoMaguey.create nombre: 'Espadín'

tipo_destilado = TipoDestilado.create nombre: 'Destilado 1'

estado = Estado.create nombre: 'Oaxaca'

region = Region.create nombre: 'Valles centrales', estado: estado

municipio = Municipio.create nombre: 'Oaxaca de Juárez', estado: estado, region: region

zona_produccion = ZonaProduccion.create localidad: 'Localidad 1', municipio: municipio

marca = Marca.create nombre: 'Marca 1', direccion: 'Calle principal #1 Centro', correo: 'marca1@mail.com'

Mezcal.create tipo_mezcal: tipo_mezcal, tipo_maguey: tipo_maguey, tipo_destilado: tipo_destilado, marca: marca, precio_promedio: 5, zona_produccion: zona_produccion, maestro_mezcalero: 'Ulises Torrentera', certificado: true, lugares_venta: 'Mezcalería In Sittu', comentario_maestro: 'No acompañar con limón'
