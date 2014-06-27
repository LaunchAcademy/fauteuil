FactoryGirl.define do
  factory :registration do
    usernme "Rambo"
    email "g@g.com"
    password "123123"
    password_confirmation { "123123" }
    avatar { File.new("#{Rails.root}/spec/fixtures/avatar.jpeg") }
  end
end
