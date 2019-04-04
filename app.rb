require 'sinatra/base'
require './lib/countdown'

class Birthday < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name_birthday'do
    $name = params[:name]
    $day =  params[:day]
    $month = params[:month]
    redirect('/Birthday')
  end

  get '/Birthday' do
    @countdown = Countdown.new($name, $day, $month)
    erb :countdown
  end

  run! if app_file == $0
end
