class CreateStockMembers < ActiveRecord::Migration
  def change
    create_table :stock_members do |t|
      t.integer :seller_id
      t.integer :stock_id

      t.timestamps null: false
    end
  end
end
