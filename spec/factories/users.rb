# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "generic username #{n}" }
    password "password"
    sequence(:email) { |n| "someone#{n}@example.com" }
    role "user"
    avatar { File.new("#{Rails.root}/spec/fixtures/avatar.jpeg") }
  end
end
