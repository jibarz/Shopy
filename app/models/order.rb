class Order < ActiveRecord::Base
	validates :order_status, :payment, :shipping_address, :shipping_city, :customer_name, :customer_surname, presence: true, length: { maximum: 255 }
	
	has_many :line_items, dependent: :destroy
	has_many :products, through: :line_items
	
	accepts_nested_attributes_for :line_items, allow_destroy: true,
	:reject_if => lambda { |a| a[:product_id].blank? or a[:quantity].blank? or a[:price].blank? } 
end
