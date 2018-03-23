require 'sinatra/base'
require './app/models/rating'

class RateFT < Sinatra::Base

  run! if app_file == $0

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/ratings' do
    # session[:score] = params[:score]
    connection = PG.connect(dbname: 'ft_ratings_test')
    connection.exec("INSERT INTO ratings (score) VALUES(#{params[:score]});")
    p "has been stored in the database"
    redirect '/thanks'
  end

  get '/thanks' do
    # @score = session[:score]
    @ratings = Rating.all
    erb(:thanks)
  end

end
