require 'sinatra/base'

class RateFT < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/ratings' do
    score = params[:score]
    p score
    redirect '/thanks'
  end

  get '/thanks' do
    erb(:thanks)
  end

  run! if app_file == $0
end
