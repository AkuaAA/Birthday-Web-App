require 'sinatra/base'

class Birthday < Sinatra::Base
  get '/' do
    'Hello Beautiful Human Being!'
  end

  run! if app_file == $0
end
