class Menu

	attr_accessor :menu_list

	def initialize
		@menu_list = []
	end

	def add(dish)
		@menu_list << [dish.name, dish.price]
	end

	def display
		@display = menu_list.map do |dish|
		"#{dish[0]}: £#{'%.2f' % dish[1]}"
		end
	end

	# def display
	# 	"#{@name}: £#{'%.2f' % @price}"
	# end

	# def display_dishes
	# 	MENU.each_with_index do |item, index|
	# 	menu_list << "#{index+1}: #{item[:name]}...............£#{sprintf '%.2f' % item[:price]}"
	# 	end
	# 	menu_list
	# end

end

