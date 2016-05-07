class Stock::TrackerService

  def fetch(stock:)
    StockTransaction.find_by(stock).
      apply_filters.
      apply_sorts
  end

end
