class Product < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true, length: { maximum: 255 }
	validates :description, :created_at, :manufacturer, :category, presence: true
	validates :stock, presence: true, numericality: { greater_than_or_equal_to: 0 } 
	
	has_many :line_items
	has_many :orders, through: :line_items
end
