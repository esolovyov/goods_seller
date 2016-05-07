class Stock::SearcherService

  def search
    search_by_warehouses
    search_by_other_stock

    analyse_sellers
  end

  def search_by_warehouses
    analyse_requestsed_quantity
    analyse_origin_and_shipping_price
  end

  def search_by_other_stock
    analyse_location_by_distanse
    analyse_requestsed_quantity
    analyse_origin_and_shipping_price
  end

  def analyse_sellers
  end

end
