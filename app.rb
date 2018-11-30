require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/words')
require('pry')

get('/') do
  @list_words = Word.all()
  erb(:input)
end

get('/words/:id') do
  @word = Word.find(params[:id])
  erb(:output)
end

post('/') do
  word = Word.new(params)
  @key = params[:key]
  @definition = params[:definition]
  word.save()
  @list_words = Word.all()
  erb(:input)
end

post('/list') do
  Word.clear()
  redirect to('/')
end

get('/definition') do
  @definition_two = params[:definition_two]
  erb(:definition)
end
