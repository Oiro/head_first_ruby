def talk(animal_type, name)

	if animal_type == "bird"

		puts "#{name} says Chirp! Chirp"

	elsif animal_type == "dog"

		puts "#{name} says Bark!"

	elsif animal_type == "cat"

		puts "#{name} says Meow!"

	elsif animal_type == "lion"

		puts "#{name} says Roar!"

	elsif animal_type == "cow"

		puts "#{name} says Moo!"

	elsif animal_type == "bob"

		puts "#{name} says Hello!"

	elsif animal_type == "duck"

		puts "#{name} says Quack!"		

	end
			

end

def move(animal_type, name, destination)

	if animal_type == "bird"

		puts "#{name} flies to the #{destination}"

	elsif animal_type == "dog"

		puts "#{name} runs to the #{destination}"

	elsif animal_type == "cat"

		puts "#{name} runs to the #{destination}"


	end

end


def report_age(name, age)

	puts "#{name} is #{age} years old"

end

move("bird", "Whistler", "tree")
talk("dog", "Sadie")
talk("bird", "Whistler")
move("cat", "Smudge", "house")
report_age("Smudge", 6)
			
