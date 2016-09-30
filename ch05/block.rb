def my_method(&my_block)
	puts "We're in the method, about to invoke your block!"
	my_block.call
	puts "We're back in the method"
	my_block.call
	puts "Back in the method, about to return!"
end

my_method do
	puts "We're in the block!"
end
