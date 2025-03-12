class SubscriptionSerializer
  include JSONAPI::Serializer
  attributes :id, :title, :price, :isActive, :frequency

  attribute :teas do |subscription|
    subscription.teas.map do |tea|
      {
        id: tea.id,
        title: tea.title,
        description: tea.description,
        temperature: tea.temperature,
        brew_time: tea.brew_time,
        price: tea.price
      }
    end
  end

  attribute :customers do |subscription|
    subscription.customers.map do |customer|
      {
        id: customer.id,
        first_name: customer.first_name,
        last_name: customer.last_name,
        email: customer.email,
        address: customer.address
      }
    end
  end
end