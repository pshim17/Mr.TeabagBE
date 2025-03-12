@tea1 = Tea.create!(
  title: "Earl Grey",
  description: "Aromatic black tea with bergamot.",
  temperature: 90.0,
  brew_time: 3,
  price: 5.99
)

@tea2 = Tea.create!(
  title: "Green Jasmine",
  description: "Floral green tea with jasmine.",
  temperature: 80.0,
  brew_time: 2,
  price: 4.99
)

@tea3 = Tea.create!(
  title: "Chamomile",
  description: "Calming herbal tea.",
  temperature: 85.0,
  brew_time: 5,
  price: 3.99
)

@tea4 = Tea.create!(
  title: "Chai Latte",
  description: "Spicy and warming tea with milk and sugar.",
  temperature: 95.0,
  brew_time: 4,
  price: 6.99
)

@tea5 = Tea.create!(
  title: "Matcha",
  description: "Japanese powdered green tea with a vibrant green color.",
  temperature: 75.0,
  brew_time: 2,
  price: 7.99
)

@tea6 = Tea.create!(
  title: "Blackberry Sage",
  description: "Rich black tea with hints of blackberry and sage.",
  temperature: 90.0,
  brew_time: 4,
  price: 5.99
)

@tea7 = Tea.create!(
  title: "Oolong",
  description: "Light and floral tea with a complex taste.",
  temperature: 85.0,
  brew_time: 3,
  price: 5.99
)

@tea8 = Tea.create!(
  title: "Peppermint",
  description: "Refreshing minty herbal tea.",
  temperature: 80.0,
  brew_time: 2,
  price: 4.99
)

@tea9 = Tea.create!(
  title: "Lemon Ginger",
  description: "Zesty lemon and spicy ginger herbal tea.",
  temperature: 85.0,
  brew_time: 3,
  price: 4.99
)

@tea10 = Tea.create!(
  title: "Rosehip Hibiscus",
  description: "Tangy and fragrant herbal tea.",
  temperature: 90.0,
  brew_time: 4,
  price: 5.99
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

@customer4 = Customer.create!(
  first_name: "Roger",
  last_name: "Federer",
  email: "roger@tennis.com",
  address: "789 Centre Court Rd"
)

@customer5 = Customer.create!(
  first_name: "Cristiano",
  last_name: "Ronaldo",
  email: "cristiano@ronaldo.com",
  address: "101 Football Park"
)

@customer6 = Customer.create!(
  first_name: "LeBron",
  last_name: "James",
  email: "lebron@basketball.com",
  address: "123 Hoop Street"
)

@customer7 = Customer.create!(
  first_name: "Usain",
  last_name: "Bolt",
  email: "usain@bolt.com",
  address: "456 Sprint Blvd"
)

@customer8 = Customer.create!(
  first_name: "Megan",
  last_name: "Rapinoe",
  email: "megan@rapinoe.com",
  address: "321 Soccer Way"
)

@subscription1 = Subscription.create!(
  title: "Monthly Tea Box",
  price: 20.99,
  isActive: true,
  frequency: 30
)

@subscription2 = Subscription.create!(
  title: "Weekly Tea Sampler",
  price: 10.99,
  isActive: true,
  frequency: 7
)

@subscription3 = Subscription.create!(
  title: "Fortnightly Tea Box",
  price: 15.99,
  isActive: true,
  frequency: 14
)

@subscription4 = Subscription.create!(
  title: "Single Tea Sampler",
  price: 5.99,
  isActive: true,
  frequency: 30
)

@subscription5 = Subscription.create!(
  title: "Seasonal Tea Box",
  price: 25.99,
  isActive: true,
  frequency: 30
)

@subscription6 = Subscription.create!(
  title: "Herbal Tea Sampler",
  price: 18.99,
  isActive: true,
  frequency: 14
)

@subscription7 = Subscription.create!(
  title: "Daily Brew Box",
  price: 50.99,
  isActive: true,
  frequency: 7
)

@subscription8 = Subscription.create!(
  title: "Evening Relaxation Box",
  price: 20.99,
  isActive: true,
  frequency: 30
)

@subscription9 = Subscription.create!(
  title: "Morning Energy Box",
  price: 30.99,
  isActive: false,
  frequency: 14
)

@subscription10 = Subscription.create!(
  title: "Exclusive Tea Club",
  price: 100.99,
  isActive: true,
  frequency: 60
)

@subscription11 = Subscription.create!(
  title: "Weekend Tea Box",
  price: 12.99,
  isActive: true,
  frequency: 7
)

@subscription12 = Subscription.create!(
  title: "Luxury Tea Collection",
  price: 40.99,
  isActive: true,
  frequency: 30
)

CustomerSubscription.create!(customer: @customer1, subscription: @subscription1)
CustomerSubscription.create!(customer: @customer2, subscription: @subscription1)
CustomerSubscription.create!(customer: @customer3, subscription: @subscription1)
CustomerSubscription.create!(customer: @customer1, subscription: @subscription5)
CustomerSubscription.create!(customer: @customer2, subscription: @subscription3)
CustomerSubscription.create!(customer: @customer3, subscription: @subscription4)
CustomerSubscription.create!(customer: @customer6, subscription: @subscription2)
CustomerSubscription.create!(customer: @customer7, subscription: @subscription2)
CustomerSubscription.create!(customer: @customer4, subscription: @subscription3)
CustomerSubscription.create!(customer: @customer8, subscription: @subscription3)
CustomerSubscription.create!(customer: @customer5, subscription: @subscription4)
CustomerSubscription.create!(customer: @customer6, subscription: @subscription4)
CustomerSubscription.create!(customer: @customer7, subscription: @subscription5)
CustomerSubscription.create!(customer: @customer8, subscription: @subscription5)
CustomerSubscription.create!(customer: @customer4, subscription: @subscription6)
CustomerSubscription.create!(customer: @customer8, subscription: @subscription6)
CustomerSubscription.create!(customer: @customer5, subscription: @subscription7)
CustomerSubscription.create!(customer: @customer7, subscription: @subscription7)
CustomerSubscription.create!(customer: @customer6, subscription: @subscription8)
CustomerSubscription.create!(customer: @customer8, subscription: @subscription8)
CustomerSubscription.create!(customer: @customer1, subscription: @subscription11)
CustomerSubscription.create!(customer: @customer4, subscription: @subscription11)
CustomerSubscription.create!(customer: @customer6, subscription: @subscription12)
CustomerSubscription.create!(customer: @customer8, subscription: @subscription12)

TeaSubscription.create!(subscription: @subscription1, tea: @tea1)
TeaSubscription.create!(subscription: @subscription1, tea: @tea2)
TeaSubscription.create!(subscription: @subscription1, tea: @tea3)
TeaSubscription.create!(subscription: @subscription2, tea: @tea4)
TeaSubscription.create!(subscription: @subscription2, tea: @tea5)
TeaSubscription.create!(subscription: @subscription3, tea: @tea6)
TeaSubscription.create!(subscription: @subscription3, tea: @tea7)
TeaSubscription.create!(subscription: @subscription4, tea: @tea8)
TeaSubscription.create!(subscription: @subscription4, tea: @tea9)
TeaSubscription.create!(subscription: @subscription5, tea: @tea10)
TeaSubscription.create!(subscription: @subscription5, tea: @tea2)
TeaSubscription.create!(subscription: @subscription6, tea: @tea1)
TeaSubscription.create!(subscription: @subscription6, tea: @tea5)
TeaSubscription.create!(subscription: @subscription7, tea: @tea3)
TeaSubscription.create!(subscription: @subscription7, tea: @tea6)
TeaSubscription.create!(subscription: @subscription11, tea: @tea4)
TeaSubscription.create!(subscription: @subscription11, tea: @tea9)
TeaSubscription.create!(subscription: @subscription12, tea: @tea6)
TeaSubscription.create!(subscription: @subscription12, tea: @tea10)
