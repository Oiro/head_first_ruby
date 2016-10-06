require 'sinatra'
require 'movie'
require 'movie_store'

store = MovieStore.new('movies.yml')


	get('/movies') do
		# 'Coming soon...'
		# erb :index
		  # @movie = Movie.new
		  # @movie.title = "Jaws"
		  # @movies = []
		  # @movies[0] = Movie.new
		  # @movies[0].title = "Jaws"
		  # @movies[1] = Movie.new
		  # @movies[1].title = "Alien"
		  # @movies[2] = Movie.new
		  # @movies[2].title = "Terminator 2"

		  @movies = store.all
		  erb :index

	end

	get('/movies/new') do

		erb :new

	end

	post('/movies/create') do

		# "Received: #{params.inspect}"
		@movie = Movie.new
		@movie.title = params['title']
		@movie.director = params['director']
		@movie.year = params['year']
		store.save(@movie)
		redirect '/movies/new'

	end

	get('/movies/:id') do
		# "Received a request for movie ID: #{params['id']}"
		id = params['id'].to_i
		@movie = store.find(id)
		erb :show
	end

	get('/addition') do
		@first = 3
		@second = 5
		@result = @first + @second
		erb :addition
	end

	get('/multiplication') do
		@first = 2
		@second = 6
		@result = @first * @second
		erb :multiplication
	end

	get('/numbers') do
		
		erb :numbers

	end

	get('/form') do

		erb :form

	end

	post('/convert') do

		fahrenheit = params['temperature'].to_f
		celcius = (fahrenheit - 32) / 1.8
		format("%0.1f degrees Fahrenheit is %0.1f degrees Celcius.", fahrenheit, celcius)

	end