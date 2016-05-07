class Seller::RegisterService

  def in_stock(seller:, stock:)
    StockMember.create(seller: seller, stock: stock)
  end

end
