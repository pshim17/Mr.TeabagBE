require 'rails_helper'

RSpec.describe Subscription, type: :model do
  it { should have_many(:customer_subscriptions) }
  it { should have_many(:tea_subscriptions) }
  it { should have_many(:customers).through(:customer_subscriptions) }
  it { should have_many(:teas).through(:tea_subscriptions) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:price) }
  it { should validate_numericality_of(:price).is_greater_than_or_equal_to(0) }
end
