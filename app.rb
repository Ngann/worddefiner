require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/words')
require('pry')

get('/') do

  erb(:input)
end

post('/') do

  erb(:input)
end
