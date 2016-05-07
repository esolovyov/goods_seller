class CreateStockTransactions < ActiveRecord::Migration
  def change
    create_table :stock_transactions do |t|
      t.integer :seller_id
      t.integer :origin_warehouse_id
      t.integer :destination_warehouse_id
      t.string :status
      t.integer :product_id
      t.integer :quantity
      t.string :invoice_uid

      t.timestamps null: false
    end
  end
end
