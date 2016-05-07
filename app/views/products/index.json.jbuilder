json.array!(@products) do |product|
  json.extract! product, :id, :seller_id, :category_id, :min_price, :max_price, :quantity, :rating, :name, :description
  json.url product_url(product, format: :json)
end
