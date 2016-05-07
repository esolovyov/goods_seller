class Stock::AnaliticsService

  attr_reader :stock

  def initialize(stock:)
    @stock = stock
  end

  def matching_products
    # analys analogs on stock
    # analys votes of this product on stock
  end

  def by_ratings
    # based on :
    #   - quantity of warhouses
    #   - quantity of sellers
    #   - quantity of movements thgough
    #   - quantity of success orders
  end

  def by_warhouses
    # fullness
    # shiping_price
    #
  end

  def by_products
    # which products are placed most the time
  end

  def by_votes_and_location
    # which products wants to see buyers on this stock/warhouse
  end

  def by_sellers
    # based on :
    #   - what sellers plased on stock
    #   - how sell products and how only deliver thought warhouses
  end

  def by_movements
    # from where products was delivered
    # and where to go
  end

end
