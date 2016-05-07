json.array!(@stock_members) do |stock_member|
  json.extract! stock_member, :id, :seller_id, :stock_id
  json.url stock_member_url(stock_member, format: :json)
end
