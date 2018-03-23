require 'sinatra/base'
require './app/models/rating'

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
    @ratings = Rating.all
    erb(:thanks)
  end

end
