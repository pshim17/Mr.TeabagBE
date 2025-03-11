require 'rails_helper'

RSpec.describe Customer, type: :model do
  it { should have_many(:customer_subscriptions) }
  it { should have_many(:subscriptions).through(:customer_subscriptions) }

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
end
