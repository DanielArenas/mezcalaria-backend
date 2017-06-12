# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :marca do
    nombre "MyString"
    logotipo { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'files', 'logo.png')) }
    direccion "MyString"
    correo "MyString"
  end
end
