json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :area_id
  json.url shop_url(shop, format: :json)
end
