require 'dish'

describe Dish do

	let (:dish) {Dish.new("Noodles", 5.40)}

	it "should initialize with a name" do
		expect(dish.name).to eq("Noodles")
	end
	it "should initialize with a price" do
		expect(dish.price).to eq(5.40)
	end
	it "should be able to display the name and price of the dish" do
		expect(dish.display).to eq("Noodles: £5.40")
	end

end