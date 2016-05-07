class WarehouseStock < ActiveRecord::Base
  belongs_to :stock
  belongs_to :product
  belongs_to :warehouse
end
