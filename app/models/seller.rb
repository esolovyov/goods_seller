class Seller < ActiveRecord::Base
  belongs_to :user

  has_many :orders
  has_many :order_items
  has_many :products
  has_many :stock_members
  has_many :stock_transactions
end
