def order_soda(flavor, size = "medium", quantity = 1)

	if quantity == 1

		plural = "soda"

	else
		plural = "sodas"

	end

	puts "#{quantity} #{size} #{flavor} #{plural}, coming right up!"

end

order_soda("orange")
order_soda("lemon-lime", "small", 2)
order_soda("grape", "large")
order_soda