json.array!(@warehouses) do |warehouse|
  json.extract! warehouse, :id, :name, :stock_id, :region, :adress, :size
  json.url warehouse_url(warehouse, format: :json)
end
