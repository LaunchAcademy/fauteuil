# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :chair do
    name "Arm Chair"
    category_id 1
    description "A chair with which you may also rest your arms."
    manufacturer "Ikea"
    location "Tokyo"
    user_id 1
  end
end
