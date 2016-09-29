class Person

	def greet_by_name(name)

		"Hello, #{name}!"
	end

end

class Friend < Person

	def greet_by_name(name)

		# basic_greeting = super(name)
		basic_greeting = super
		"#{basic_greeting} Glad to see you!"

	end


end

puts Friend.new.greet_by_name("Bert")






