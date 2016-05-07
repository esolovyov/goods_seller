class Warehouse < ActiveRecord::Base
  belongs_to :stock
  has_many :warehouse_stocks
end
