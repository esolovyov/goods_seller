class Product < ActiveRecord::Base
  belongs_to :seller
  belongs_to :category

  has_many :order_items
  has_many :stock_transactions
  has_many :warehouse_stocks
end
