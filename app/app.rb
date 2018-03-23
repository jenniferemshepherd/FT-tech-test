require 'sinatra/base'

class RateFT < Sinatra::Base

  run! if app_file == $0

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/ratings' do
    session[:score] = params[:score]
    redirect '/thanks'
  end

  get '/thanks' do
    @score = session[:score]
    p @score
    erb(:thanks)
  end

end
