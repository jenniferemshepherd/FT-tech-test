require 'sinatra/base'
require './app/models/rating'
require './database_connection_setup'

class RateFT < Sinatra::Base

  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/ratings' do
    Rating.create(params[:score])
    redirect '/thanks'
  end

  get '/thanks' do
    @your_score = Rating.all.last
    @ratings = Rating.all
    erb(:thanks)
  end

end
