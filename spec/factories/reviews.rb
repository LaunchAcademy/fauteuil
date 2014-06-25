# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    body "This chair is fantastic. It rolls, is very cushy, and is well-designed. All in all, a great chair."
    rating 5
    sequence (:user_id) { |i| i }
    chair_id 0
  end
end
