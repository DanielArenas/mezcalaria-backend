# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usuario do
    email "MyString"
    password_digest "MyString"
    rol nil
  end
end
