json.array!(@orders) do |order|
  json.extract! order, :id, :seller_id, :price, :delivery_price, :region, :address, :comment
  json.url order_url(order, format: :json)
end
