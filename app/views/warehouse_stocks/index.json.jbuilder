json.array!(@warehouse_stocks) do |warehouse_stock|
  json.extract! warehouse_stock, :id, :stock_id, :warehouse_id, :product_id, :quantity
  json.url warehouse_stock_url(warehouse_stock, format: :json)
end
