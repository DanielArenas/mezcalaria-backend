# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mezcal do
    nombre 'Mezcal 1'
    tipo_mezcal
    tipo_maguey
    tipo_destilado
    fotografia { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'files', 'logo.png')) }
    marca
    precio_promedio "9.99"
    zona_produccion
    maestro_mezcalero "MyString"
    certificado ""
    lugares_venta "MyText"
    comentario_maestro "MyText"
  end
end
