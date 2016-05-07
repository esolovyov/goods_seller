class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.string :name
      t.integer :stock_id
      t.string :region
      t.string :adress
      t.integer :size

      t.timestamps null: false
    end
  end
end
