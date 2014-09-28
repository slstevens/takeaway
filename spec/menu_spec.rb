require 'menu'
require 'dish'

	
describe Menu do

	let(:menu) {Menu.new}
	let (:dish) {double :dish, :name => "Noodles", :price => 4.70}	

	it "should be a store of the added dishes and prices" do
		menu.add(dish)
		expect(menu.menu_list).to include(["Noodles", 4.70])
	end

	it "should display a list of the added dishes and prices" do
		menu.add(dish)
		expect(menu.display).to eq(["Noodles: £4.70"])
	end
end