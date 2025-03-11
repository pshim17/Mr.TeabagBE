class Tea < ApplicationRecord
  has_many :tea_subscriptions
  has_many :subscriptions, through: :tea_subscriptions

  validates :title, :description, :temperature, :brew_time, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :temperature, numericality: true
end
