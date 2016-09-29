class Vehicle

	attr_accessor :odometer
	attr_accessor :gas_used

	def mileage
		@odometer / @gas_used
	end

	def accelerate
		puts "Floor it!"
	end

	def sound_horn
		puts "Beep! Beep!"
	end

	def steer
		puts "Turn 2 front wheels"
	end
end


class Car < Vehicle

	
end

class Motorcycle < Vehicle

	def steer
		puts "Turn front wheel."
	end

	
end

class Truck < Vehicle

	attr_accessor :cargo

	def load_bed(contents)

		puts "Securing #{contents} in the truck bed"

		@cargo = contents

	end

	
end

# truck = Truck.new
# truck.accelerate
# truck.steer
# truck.load_bed("259 Bouncy Balls")
# puts "The truck is carrying #{truck.cargo}"
# truck.odometer = 11432
# truck.gas_used = 366
# puts "Average MPG:"
# puts truck.mileage


# car = Car.new
# car.odometer = 11432
# car.gas_used = 366
# car.odometer = 22914
# car.gas_used = 728
# puts car.instance_variables


# puts "Lifetime MPG: "
# puts car.mileage

motorcycle = Motorcycle.new
motorcycle.steer
motorcycle.accelerate