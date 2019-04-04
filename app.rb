require 'sinatra/base'

class Birthday < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name_birthday'do
    redirect('/Birthday')
  end

  get '/Birthday' do
    'Happy Birthday Akua'
  end

  run! if app_file == $0
end
