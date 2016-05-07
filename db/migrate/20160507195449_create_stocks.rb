class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.string :region
      t.string :address
      t.decimal :store_price
      t.integer :rating

      t.timestamps null: false
    end
  end
end
