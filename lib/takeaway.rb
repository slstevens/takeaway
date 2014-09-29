class Takeaway

	def hour_ahead
		t = Time.now
		ahead = t + (60 * 60)
		ahead.to_s[11..15]
	end

	def comp_message(order)
		return "Thanks #{order.customer_name}! Your order was placed and will be delivered by #{hour_ahead} to #{order.customer_streetaddress}, #{order.customer_postcode}. Please pay #{order.bill_total}"
	end
end