class LineItem 

	attr_reader :price, :quantity

	def initialize(price, quantity)
		@price = price
		@quantity = quantity
	end

	def subtotal
		"£#{'%.2f' % (price * quantity)}"
	end

end