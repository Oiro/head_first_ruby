school = {

	"Simone" => "here",
	"Jeanie" => "here"

}

names = ["Simone", "Ferriss", "Jeanie", "Cameron"]

names.each do |name|
	if school[name]
		puts "#{name} is present"
	else
		puts "#{name} is absent"
	end
end