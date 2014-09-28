class Dish

	attr_reader :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end

	# def display
	# 	"#{@name}: £#{'%.2f' % @price}"
	# end
	# => Gonna transfer this across to the menu  
end
