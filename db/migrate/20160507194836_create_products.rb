class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :seller_id
      t.integer :category_id
      t.decimal :min_price
      t.decimal :max_price
      t.integer :quantity
      t.integer :rating
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
