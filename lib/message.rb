class Message

	attr_accessor :body, :number

	def initialize(body, number)
		@body = body
		@number = number
	end

	def send
		account_sid = 'AC5589375485fb2d5be95965ade0177720'
		auth_token = '7fe539d09001dd0aec4b091edbb5ee8a' 
		@client = Twilio::REST::Client.new account_sid, auth_token
		 
		message = @client.account.messages.create(:body => body,
		    :to => number,     
		    :from => "+441484599042")
		puts message.sid
	end
end