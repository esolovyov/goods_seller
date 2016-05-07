class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :seller_id
      t.integer :buyer_id
      t.decimal :price
      t.decimal :delivery_price
      t.string :region
      t.string :address
      t.text :comment

      t.timestamps null: false
    end
  end
end
