json.array!(@costs) do |cost|
  json.extract! cost, :id, :price, :unit, :quantity, :user_id, :product_id, :shop_id
  json.url cost_url(cost, format: :json)
end
