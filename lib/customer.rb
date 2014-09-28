class Customer

	attr_reader :name, :number, :streetaddress, :postcode

	def initialize(name, number, streetaddress, postcode)
		@name = name
		@number = number
		@streetaddress = streetaddress
		@postcode = postcode
	end

	
end