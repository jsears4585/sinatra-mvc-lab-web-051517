require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig = PigLatinizer.new
    @latin = pig.to_pig_latin(params[:user_phrase])
    erb :pig_latin
  end

end
