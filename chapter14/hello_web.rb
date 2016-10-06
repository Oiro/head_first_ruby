require 'sinatra'

get('/hello') do
	'Hello, web!'
	# 'Sinatra execution succeeded!'
end

get('/salut') do
	'Salut, web!'
end

get('/namaste') do
	'Namaste, web!'
end

get('/sandwich') do
	'Make your own sandwich!'
end


