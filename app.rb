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
  @definition_two = params[:definition_two]
  @definition_three = params[:definition_three]
  word.save()
  word.add_def(@definition_two)
  word.add_def(@definition_three)
  @list_words = Word.all()
  erb(:input)
end

post('/list') do
  Word.clear()
  redirect to('/')
end
#
# get('/definition') do
#   @word = Word.find(params[:id])
#   @definition_two = params[:definition_two]
#   erb(:definition)
# end
#
# post('/definitions/:id') do
#   @word = Word.find(params[:id])
#   @definition_two = params[:definition_two]
#   erb(:list)
# end
