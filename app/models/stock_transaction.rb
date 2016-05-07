class StockTransaction < ActiveRecord::Base
  belongs_to :seller
  belongs_to :product
  belongs_to :origin_warehouse, class_name: "Warehouse", foreign_key: :origin_warehouse_id
  belongs_to :destination_warehouse, class_name: "Warehouse", foreign_key: :destination_warehouse_id
end
