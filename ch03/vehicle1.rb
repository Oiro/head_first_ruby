class Vehicle

	def shape

		puts "I am round"

	end

end

class Mat < Vehicle

	def shape
	
	super

	puts " I am a round mat"
	end

	# attr_writer

	def color=(new_color)

		@color = new_color

	end

	# attr_reader

	def color

		@color 


	end

end

mambo = Mat.new
mambo.shape

# puts shape
mambo.color=("orange")

puts mambo.color