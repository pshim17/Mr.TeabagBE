# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

@tea1 = Tea.create!(
  title: "Earl Grey",
  description: "Aromatic black tea with bergamot.",
  temperature: 90.0,
  brew_time: 3,
  price: 5.0
)

@tea2 = Tea.create!(
  title: "Green Jasmine",
  description: "Floral green tea with jasmine.",
  temperature: 80.0,
  brew_time: 2,
  price: 4.5
)

@tea3 = Tea.create!(
  title: "Chamomile",
  description: "Calming herbal tea.",
  temperature: 85.0,
  brew_time: 5,
  price: 3.0
)

@customer1 = Customer.create!(
  first_name: "Serena",
  last_name: "Williams",
  email: "serena@tennis.com",
  address: "123 Grand Slam Blvd"
)

@customer2 = Customer.create!(
  first_name: "Lionel",
  last_name: "Messi",
  email: "lionel@messi.com",
  address: "456 Soccer Avenue"
)

@customer3 = Customer.create!(
  first_name: "James",
  last_name: "Bond",
  email: "James@bond.com",
  address: "007 Goldeneye Street"
)

@subscription1 = Subscription.create!(
  title: "Monthly Tea Box",
  price: 20.0,
  status: true,
  frequency: 30
)

@subscription2 = Subscription.create!(
  title: "Weekly Tea Sampler",
  price: 10.0,
  status: true,
  frequency: 7
)

CustomerSubscription.create!(customer: @customer1, subscription: @subscription1)
CustomerSubscription.create!(customer: @customer2, subscription: @subscription1)
CustomerSubscription.create!(customer: @customer3, subscription: @subscription2)

TeaSubscription.create!(subscription: @subscription1, tea: @tea1)
TeaSubscription.create!(subscription: @subscription1, tea: @tea2)
TeaSubscription.create!(subscription: @subscription2, tea: @tea3)
