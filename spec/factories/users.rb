# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "generic username  #{n}" }
    password "hello"
    sequence(:email) { |n| "generic email  #{n}" }
    picture "this is an url to image"
    role "user"
  end
end
