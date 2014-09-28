require 'customer'

describe Customer do

	let(:customer) {Customer.new('Sean', '07702847862', '16 Copse Wood Way', 'HA6 2UE')}

	it "should have a name" do
		expect(customer.name).to eq "Sean"
	end

	it "should have a phone number" do
	end

	it "should have a delivery street address" do
	end

	it "should have a delivery postcode" do
	end
end