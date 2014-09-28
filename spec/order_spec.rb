require 'order'

describe Order do

	let (:order)	 { Order.new(customer1) }
	let (:dish) 	 { double :dish, :name => "Noodles", :price => 4.70 }	
	let (:customer1)  { double :customer, :name => 'Sean', :number => '07702847862', :streetaddress => '16 Copse Wood Way', :postcode => 'HA6 2UE'}
	let (:takeaway)  { double :takeaway }

	it "should contain a list of the items ordered" do
		expect(order.ordered_items).not_to be nil
	end

	it "should have a customer" do
		expect(order.customer_name).not_to be nil
	end

	it "should be able to add a dish to the order" do
		order.add(dish, 2)
		expect(order.ordered_items).to include(['Noodles', 4.70, 2])
	end

	it "should get a line item total" do
		order.add(dish, 2)
		expect(order.get_total(order.ordered_items[0])).to eq "£9.40"
	end

	it "should be able to calculate the total bill" do
		order.add(dish, 2)
		expect(order.get_bill_total).to eq "£9.40"
	end
end