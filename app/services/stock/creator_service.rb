class Stock::CreatorService

  # Example:
  # {
  #   :user_id,
  #   :name,
  #   :description,
  #   :region,
  #   :address,
  #   :store_price,
  #   :rating,
  #   :warehouses => [
  #     {
  #       :name,
  #       :stock_id,
  #       :region,
  #       :adress,
  #       :size,
  #     },
  #     ...
  #   ]
  # }
  def create(params)
    Stock.create(params)
    create_warehouses
  end

  def create_warehouses
    create_example_data
  end

  def create_example_data
  end
end
