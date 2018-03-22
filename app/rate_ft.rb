require 'sinatra/base'

class RateFT < Sinatra::Base
  get '/' do
    'Please share your experience with us'
  end

  run! if app_file == $0
end
