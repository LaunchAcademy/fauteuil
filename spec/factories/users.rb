# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "user123"
    role "user"
    email "someone@somewhere.com"
    password "12345678"
  end
end
