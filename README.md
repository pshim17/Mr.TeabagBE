# README

<img width="1709" alt="Screenshot 2025-03-12 at 3 27 06 PM" src="https://github.com/user-attachments/assets/ee1c255a-49ce-44c2-9006-0199477b455c" />

The Mr. Teabag is a full-stack application designed for managing tea subscriptions. It allows users to:
  - View a list of all tea subscriptions.
  - Click on each subscription to see detailed information, including the subscription's name, price, and associated teas and customers.
  - Cancel a specific subscription if needed.

# Getting Started

Clone down the repository to your local machine, cd into the directory and run:

  - `bundle install`
  - `rails db:{drop,create,migrate,seed}` or `rails db:reset`
  - `rails s`

You can test the backend using the test suite or by interacting with the endpoints directly through a tool like Postman.

# Technology Used

- Ruby v3.2
- Rails v7.1
- PostgreSQL
- JSONAPI-Serializer
- rack-cors

# Database Creation/Initialization

<img width="1627" alt="Screenshot 2025-03-12 at 2 44 05 PM" src="https://github.com/user-attachments/assets/92322b8b-f92e-41f2-bc59-50e5f44a1ae8" />

To create/initialize the database run:

  - `rails db:{drop,create,migrate,seed}` or `rails db:reset`

# Endpoints and Sample Requests/Responses:

GET All Tea Subscriptions:

  `GET http://localhost:3000/api/v1/subscriptions`

<img width="586" alt="Screenshot 2025-03-12 at 2 48 12 PM" src="https://github.com/user-attachments/assets/9b7a8e23-08b5-40a5-8835-00ad1f2b3b08" />

GET One Tea Subscription by id: 3:

  `GET http://localhost:3000/api/v1/subscriptions/3`
 
<img width="678" alt="Screenshot 2025-03-12 at 2 50 12 PM" src="https://github.com/user-attachments/assets/a9e21219-ed22-409b-be62-7c1150501bca" />

Cancel Subscription by id: 8 :

  `PATCH http://localhost:3000/api/v1/subscriptions/8`
  `{
      "isActive": false
   }`

Before: 

<img width="721" alt="Screenshot 2025-03-12 at 3 00 26 PM" src="https://github.com/user-attachments/assets/d39fa4ab-b69b-4666-bbb0-c54f07b11da9" />

After:

<img width="659" alt="Screenshot 2025-03-12 at 3 04 02 PM" src="https://github.com/user-attachments/assets/5a902973-3908-47f3-b1c5-830c5247a27f" />

# Test Suite:
- RSpec
- ShouldaMatchers
- SimpleCov
- FactoryBot

# How to run the test suite

- `bundle exec rspec spec`

# Deployment instructions

- Coming Soon!
