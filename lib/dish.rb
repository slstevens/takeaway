class Dish

	attr_reader :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end

	def display
		two_float = @price 
		"#{@name}: £#{'%.2f' % @price}"
	end

end
