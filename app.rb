require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect to ('/play')
  end

  get '/play' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    @player2_hp = $player2.hp
    erb(:play)
  end

  get '/attack' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    $player1.attack($player2)
    erb(:attack)
  end
end
