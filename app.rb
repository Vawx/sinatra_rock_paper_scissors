require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
require('./lib/check_for_winner')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @one_options = params.fetch('options_one')
  @two_options = params.fetch('options_two')

  @converted_one_option = @one_options.to_i
  @converted_two_option = @two_options.to_i
  @converted_two_option -= 3

  @choices = Array.new(  )
  @choices.push( @converted_one_option.rock_paper_scissors )
  @choices.push( @converted_two_option.rock_paper_scissors )

  @winner = @choices.check_for_winner

  erb(:result)
end
