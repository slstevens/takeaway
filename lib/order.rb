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
end