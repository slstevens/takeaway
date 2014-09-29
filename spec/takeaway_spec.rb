require 'takeaway'
require 'timecop'

describe Takeaway do
	
	let(:takeaway) { Takeaway.new }
	let(:order) { double :order, :customer_name => 'Sean', :customer_streetaddress => '16 Copse Wood Way', :customer_postcode => 'HA6 2UE', :bill_total => '£15.00'}

	before do
		Timecop.freeze('2014-09-29 10:00:00 +0100')
	end

	it "should be able to calculate an hour from message time" do
		expect(takeaway.hour_ahead).to eq('11:00')
	end 

	it "should compose a message to customer" do
		expect(takeaway.comp_message(order)).to eq("Thanks Sean! Your order was placed and will be delivered by 11:00 to 16 Copse Wood Way, HA6 2UE. Please pay £15.00")
	end
end