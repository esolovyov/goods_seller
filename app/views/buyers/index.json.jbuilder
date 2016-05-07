json.array!(@buyers) do |buyer|
  json.extract! buyer, :id, :user_id, :region, :address, :rating, :paiment_info, :purchases_counter
  json.url buyer_url(buyer, format: :json)
end
