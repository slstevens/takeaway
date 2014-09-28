require 'line_item'

describe LineItem do
	
	let(:lineitem)	{LineItem.new(4.70, 3)}

	it "should include a quantity of the dish ordered" do
		expect(lineitem.quantity).to eq 3
	end

	it "should calculate the dish subtotal" do
		expect(lineitem.subtotal).to eq "£14.10"
	end
end	