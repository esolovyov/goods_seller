class Order < ActiveRecord::Base
  belongs_to :seller
  belongs_to :buyer

  has_many :order_items
end
