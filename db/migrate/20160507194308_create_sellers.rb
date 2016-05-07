class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.integer :user_id
      t.string :region
      t.string :address
      t.boolean :active
      t.integer :raiting

      t.timestamps null: false
    end
  end
end
