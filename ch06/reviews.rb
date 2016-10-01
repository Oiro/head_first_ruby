# review_file = File.open("reviews.txt")

# puts review_file.class

# lines = review_file.readlines

# puts "Line 4: #{lines[3]}"
# puts "Line 1: #{lines[0]}"


lines = []

File.open("reviews.txt") do |review_file|

	lines = review_file.readlines

end

# review_file.close

# puts lines.length

relevant_lines = []

lines.each do |line|
	if line.include?("Truncated")
		relevant_lines << line
	end
end

puts relevant_lines