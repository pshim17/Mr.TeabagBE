class SubscriptionSerializer
  include JSONAPI::Serializer
  attributes :id, :title, :price, :status, :frequency

  has_many :teas
  has_many :customers
end
