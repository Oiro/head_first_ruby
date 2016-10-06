require 'movie'
require 'yaml/store'

store = YAML::Store.new('test.yml')

first_movie = Movie.new
first_movie.title = "Spirited Away"
first_movie.director = "Hayao Miyazaki"
first_movie.year = 2001

second_movie = Movie.new
second_movie.title = "Inception"
second_movie.director = "Christopher Nolan"
second_movie.year = 2010

store.transaction do
store["Spirited Away"] = first_movie
store["Inception"] = second_movie

p store["Inception"]

end

