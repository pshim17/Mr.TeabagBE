FactoryBot.define do
  factory :subscription do
    title { Faker::Subscription.plan }
    price { Faker::Commerce.price(range: 10..100.0) } 
    status { Faker::Boolean.boolean }
    frequency { Faker::Number.between(from: 7, to: 30) }
  end
end