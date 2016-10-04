class Dog

	attr_accessor :name, :age

	

	def report_age

		puts "#{@name} is #{@age} years old."

	end

	def talk

		puts "#{@name} says Bark!"

	end

	def move(destination)

		puts "#{@name} runs to the #{destination}"

	end

end