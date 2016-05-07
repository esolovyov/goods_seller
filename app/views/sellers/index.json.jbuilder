json.array!(@sellers) do |seller|
  json.extract! seller, :id, :user_id, :region, :address, :active, :raiting
  json.url seller_url(seller, format: :json)
end
