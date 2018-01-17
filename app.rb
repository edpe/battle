require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    p session[:player1_name]#.inspect
    @player1_name = session[:player1_name]#.inspect
    @player2_name = session[:player2_name]#.inspect
    p @player1_name
    p @player2_name
    erb(:play)
  end

  post '/names' do
    session[:player1_name] = params[:player1_name]
    session[:player2_name] = params[:player2_name]
    redirect to ('/play')
  end


  run! if app_file == $0
end
