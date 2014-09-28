class Order

	attr_accessor :ordered_items, :customer_name, :customer_number, :customer_streetaddress, :customer_postcode, :bill_total

	def initialize(customer)
		@ordered_items = []
		@customer_name = (customer.name)
		@customer_number = (customer.number)
		@customer_streetaddress = (customer.streetaddress)
		@customer_postcode = (customer.postcode)
		@bill_total = bill_total
	end

	def add(dish, quantity)
		ordered_items << [dish.name, dish.price, quantity]
	end

	def get_total(line)
		line1 = LineItem.new(line[1], line[2])
		line1.subtotal
	end

	def get_bill_total
		bill = ordered_items.map do |line|
			total = get_total(line.to_a)
		end
		@bill_total = bill.inject(:+)
	end	
end