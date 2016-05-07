class StockMember < ActiveRecord::Base
  belongs_to :stock
  belongs_to :seller
end
