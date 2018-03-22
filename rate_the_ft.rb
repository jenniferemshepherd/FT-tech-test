require 'sinatra/base'

class RateFT < Sinatra::Base
  get '/' do
    'Hello FT visitors'
  end

  run! if app_file == $0
end
