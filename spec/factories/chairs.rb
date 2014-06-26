# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :chair do

    sequence(:name) { |n| "svaar #{n}" }
    description "swedish chair"
    manufacturer "Ikea"
    location "Boston"
    picture { File.new("#{Rails.root}/spec/support/fixtures/image.jpg") }

    category
    user

  end
end
