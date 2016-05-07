class Stock::LoaderService

  def add(stock:, products:)
    warehouses = find_available_warehouses(stock)
    if warehouses
      # User has to choose warehouse from list on UI side
      # or we can get the first one
      warehouses.sort_by_raiting.first.create(products)
    else
      raise 'No warehouses available. Sorry :)'
    end
  end

  def move(products:, origin_strock:, destination_strock:)
    Stock.trnsaction do
      find_warehouses
      remove_from_origin_strock
      add_to_destination_stock
    end
  end

  def deliver
  end

  def find_available_warehouses(stock)
    stock.analyse_by_capacity
    stock.analyse_by_raiting
    stock.analyse_by_location
    stock.analyse_by_fullness
  end

end
