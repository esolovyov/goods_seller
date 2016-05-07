class Seller::CreatorService

  def create
    Seller.create
    products1 = Product::CreatorService.create
    products2 = Product::CreatorService.create

    Seller::RegisterService.in_stock(seller, stock1)
    Seller::RegisterService.in_stock(seller, stock2)

    Stock::LoaderService.add(stock1, products1)

    if Stock::AnaliticsService.matching_products(stock2, products2)
      Stock::LoaderService.add(stock2, products2)
    end

    Stock::LoaderService.move(products1, stock1, stock2)
  end

end
