class TeaSerializer
  include JSONAPI::Serializer
  attributes :id, :title, :description, :temperature, :brew_time, :price
end