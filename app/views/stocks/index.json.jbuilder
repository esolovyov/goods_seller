json.array!(@stocks) do |stock|
  json.extract! stock, :id, :user_id, :name, :description, :region, :address, :store_price, :rating
  json.url stock_url(stock, format: :json)
end
