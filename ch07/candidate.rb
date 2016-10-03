class Candidate
	attr_accessor :name, :age, :occupation, :hobby, :birthplace
	# def initialize(name, age, occupation, hobby = nil, birthplace)
	def initialize(name, options = {})
		self.name = name
		self.age = options[:age]
		self.occupation = options[:occupation]
		self.hobby = options[:hobby]
		self.birthplace = options[:birthplace]
	end
end

# def print_summary(candidate)
# 	puts "Candidate: #{candidate.name}"
# 	puts "Age: #{candidate.age}"
# 	puts "Occupation: #{candidate.occupation}"
# 	puts "Hobby: #{candidate.hobby}"
# 	puts "Birthplace: #{candidate.birthplace}"
# end

# candidate = Candidate.new("Carl Barnes", 49, "Attorney",nil, "Miami")
# candidate = Candidate.new("Amy Nguyen", 37, "Lacrose", "Engineer", "Seattle")
# print_summary(candidate)

candidate = Candidate.new("Amy Nguyen", 
	{:age => 37, :occupation => "Engineer", :hobby => "Lacrose", :birthplace => "Seattle"})
p candidate

candidate = Candidate.new("Carl Barnes",
	{:age => 49, :occupation => "Attorney", :birthplace => "Miami"})

p candidate

candidate = Candidate.new( "Amy Nguyen", 
	{:birthplace => "Miami", :hobby => "Lacrose", :occupation => "Engineer", :age => 37})
p candidate

candidate = Candidate.new("Carl Barnes",
	:age => 49, :occupation => "Attorney")

p candidate

candidate = Candidate.new("Amy Nguyen", age:  37, occupation:  "Engineer", hobby:  "Lacrose")
p candidate

candidate = Candidate.new("Amy Nguyen", 
	age: 37, occupation: "Engineer", hobby: "Lacrose", birthplace: "Seattle")
p candidate

candidate = Candidate.new("Carl Barnes")

p candidate

candidate = Candidate.new("Carl Barnes", occupation: "Attorney")

p candidate
