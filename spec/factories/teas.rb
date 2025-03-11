FactoryBot.define do
  factory :tea do
    title { Faker::Tea.variety }
    description { Faker::Lorem.sentence }
    temperature { Faker::Number.decimal(l_digits: 2) }
    brew_time { Faker::Number.between(from: 1, to: 10) }  
    price { Faker::Commerce.price(range: 5..100.0) }  
  end
end