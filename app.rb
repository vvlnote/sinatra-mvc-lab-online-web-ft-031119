require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    puts params
    piglatinizer = PigLatinizer.new
    @piglatinized_str = piglatinizer.piglatinize(params[:user_phrase])
    puts @piglatinized_str
    erb :piglatinize
  end
  
end