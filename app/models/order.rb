class Order < ActiveRecord::Base
	validates :order_status, :payment, :shipping_address, :shipping_city, :customer_name, :customer_surname, presence: true, length: { maximum: 255 }
	
	has_many :line_items
	has_many :products, through: :line_items
end
