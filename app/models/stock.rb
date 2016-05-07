class Stock < ActiveRecord::Base
  belongs_to :user

  has_many :stock_members
  has_many :warehouses
  has_many :warehouse_stocks
end
