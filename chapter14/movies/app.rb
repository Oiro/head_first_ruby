require 'sinatra'
require 'movie'

	get('/movies') do
		# 'Coming soon...'
		# erb :index
		  # @movie = Movie.new
		  # @movie.title = "Jaws"
		  @movies = []
		  @movies[0] = Movie.new
		  @movies[0].title = "Jaws"
		  @movies[1] = Movie.new
		  @movies[1].title = "Alien"
		  @movies[2] = Movie.new
		  @movies[2].title = "Terminator 2"
		  erb :index

	end

	get('/movies/new') do

		erb :new

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