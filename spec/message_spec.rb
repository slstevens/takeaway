require 'message'

describe Message do
	
	let(:message) { Message.new('test', number) }
	let(:number) { '88888888' }

	it "should initialize with a body" do
		expect(message.body).to eq('test')
	end

	it "should initialize with a number" do
		expect(message.number).to eq('88888888')
	end

end