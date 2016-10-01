def make_casserole

	puts "Preheat oven to 375 degrees"

	ingredients = yield

	puts "Place #{ingredients} in dish"

	puts "Bake for 20 minutes"

end

make_casserole do

	"noodles, celery, and tuna"

end

make_casserole do

	"rice, broccoli, and chicken"

end

