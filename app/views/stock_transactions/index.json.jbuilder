json.array!(@stock_transactions) do |stock_transaction|
  json.extract! stock_transaction, :id, :seller_id, :origin_warehouse_id, :destination_warehouse_id, :status, :product_id, :quantity, :invoice_uid
  json.url stock_transaction_url(stock_transaction, format: :json)
end
