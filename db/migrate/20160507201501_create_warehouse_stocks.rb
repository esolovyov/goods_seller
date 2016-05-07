class CreateWarehouseStocks < ActiveRecord::Migration
  def change
    create_table :warehouse_stocks do |t|
      t.integer :stock_id
      t.integer :warehouse_id
      t.integer :product_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
