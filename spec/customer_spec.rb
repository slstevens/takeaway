require 'customer'

describe Customer do

	let(:customer) {Customer.new('Sean', '07702847862', '16 Copse Wood Way', 'HA6 2UE')}

	it "should have a name" do
		expect(customer.name).to eq 'Sean'
	end

	it "should have a phone number" do
		expect(customer.number).to eq '07702847862'
	end

	it "should have a delivery street address" do
		expect(customer.streetaddress).to eq '16 Copse Wood Way'
	end

	it "should have a delivery postcode" do
		expect(customer.postcode).to eq 'HA6 2UE'
	end
end