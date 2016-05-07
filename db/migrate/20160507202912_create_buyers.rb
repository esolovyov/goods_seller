class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.integer :user_id
      t.string :region
      t.string :address
      t.integer :rating
      t.text :paiment_info
      t.integer :purchases_counter

      t.timestamps null: false
    end
  end
end
