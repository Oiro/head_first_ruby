def volume(options)
	options[:width] * options[:height] * options[:depth]
end

result = volume( width: 10, height: 5, depth: 2.5 )

puts "Volume is #{result}"