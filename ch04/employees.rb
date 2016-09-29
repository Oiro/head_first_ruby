class Employee

	attr_reader :name

	def name=(name)

		if name == ""
			raise "Name can't be blank!"
		end

		@name = name

	end

	def initialize(name = "Anonymous")

		self.name = name

	end

	def print_name


		puts "Name: #{name}"


	end

	# def salary=(salary)

	# 	if salary < 0
	# 		raise "A salary of #salary} isn't valid!"
	# 	end

	# 	@salary = salary

	# end

	# def initialize(name = "Anonymous", salary = 0.0)

		# @name = "Anonymous"
		# @salary = 0.0

		# @name = name
		# @salary = salary

		# if name == ""
		# 	raise "Name can't be blank!"
		# end

		# @name = name

		# if salary < 0
		# 	raise "A salary of #salary} isn't valid!"
		# end

		# @salary = salary

		# amy.name = name

		# amy.salary = salary

	# 	self.name = name
	# 	self.salary = salary

	# end

	# def print_pay_stub

	# 	puts "Name: #{@name}"
	# 	pay_for_period = (@salary / 365.0) * 14

	# 	formatted_pay = format("%.2f", pay_for_period)

	# 	# puts "Pay This Period $#{pay_for_period}"
	# 	puts "Pay This Period: $#{formatted_pay}"

	# 	# puts @name, @salary
	# 	# p @name, @salary
	# 	# puts nil.class
	# 	# puts nil.to_s
	# 	# puts nil.inspect

	# end

end

class SalariedEmployee < Employee

	attr_reader :salary

	def salary=(salary)
		# Code to validate and set @salary
			if salary < 0
			raise "A salary of #{salary} isn't valid!"
			end

				@salary = salary

	end

	def initialize(name = "Anonymous", salary = 0.0)

		# self.name = name
		super(name)
		self.salary = salary

	end

	
	def print_pay_stub

		print_name
		pay_for_period = (salary / 365.0) * 14

		formatted_pay = format("%.2f", pay_for_period)

		puts "Pay This Period: #{formatted_pay}"

	end




end

class HourlyEmployee < Employee

	

	def self.security_guard(name)

		HourlyEmployee.new(name, 19.25, 30)

	end

	def self.cashier(name)

		HourlyEmployee.new(name, 12.75, 25)

	end

	def self.janitor(name)

		HourlyEmployee.new(name, 10.50, 20)
	end

	attr_reader :hourly_wage, :hours_per_week

	def hourly_wage=(hourly_wage)
		# Code to validate and set @hourly_wage
		if hourly_wage < 0
			raise "An hourly_wage of #{hourly_wage} isn't valid!"
			end

				@hourly_wage = hourly_wage

	end

	def hours_per_week=(hours_per_week)
		# Code to validate and set @hours_per_week
		if hours_per_week < 0
			raise "hours_per_week of #{hours_per_week} isn't valid!"
			end

				@hours_per_week = hours_per_week

	end

	def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0 )

		# self.name = name
		super(name)
		self.hourly_wage = hourly_wage
		self.hours_per_week = hours_per_week
	end

	def turn_into_cashier


		self.hourly_wage = 12.75
		self.hours_per_week = 25

	end


	

	def print_pay_stub

		print_name
		pay_for_period = hourly_wage * hours_per_week * 2

		formatted_pay = format("%.2f", pay_for_period)

		puts "Pay This Period: $#{formatted_pay}"

	end
end

# amy = Employee.new
# amy.name = "Amy Blake"
# amy.salary = 50000
# amy.print_pay_stub


# kara = Employee.new
# kara.name = "Kara Winston"

# ben = Employee.new
# ben.salary = -246

# employee = Employee.new
# employee = Employee.new("Amy Blake", 50000)
# employee.print_pay_stub

# amy = Employee.new("", 50000)
# amy = Employee.new("Amy Blake", 50000)
# amy = Employee.new("Amy Blake", -99999)
# amy.print_pay_stub

# Employee.new("Jane Doe", 50000).print_pay_stub
# Employee.new("Jane Doe").print_pay_stub
# Employee.new.print_pay_stub

# employee = Employee.new("", -246)
# employee.print_pay_stub

# Employee.new("Amy Blake", 50000).print_pay_stub

# salaried_employee = SalariedEmployee.new
# salaried_employee.name = "Jane Doe"
# salaried_employee.salary = 50000

# salaried_employee = SalariedEmployee.new("Jane Doe", 50000)
# salaried_employee.print_pay_stub


# hourly_employee = HourlyEmployee.new
# hourly_employee.name = "John Smith"
# hourly_employee.hourly_wage = 14.97
# hourly_employee.hours_per_week = 30
# hourly_employee.print_pay_stub

# hourly_employee = HourlyEmployee.new("John Smith", 14.97, 30)
# hourly_employee.print_pay_stub

jane = SalariedEmployee.new("Jane Doe", 50000)
jane.print_pay_stub

angela = HourlyEmployee.security_guard("Angela Mathews")
edwin = HourlyEmployee.janitor("Edwin Burgess")
ivan = HourlyEmployee.cashier("Ivan Stokes")

angela.print_pay_stub
edwin.print_pay_stub
ivan.print_pay_stub