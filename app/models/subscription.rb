class Subscription < ApplicationRecord
  has_many :customer_subscriptions
  has_many :tea_subscriptions
  
  has_many :customers, through: :customer_subscriptions
  has_many :teas, through: :tea_subscriptions

  validates :title, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
