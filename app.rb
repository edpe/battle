require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/attack.rb'

class Battle < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    @game = Game.create(player1, player2)
    redirect to ('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    Attack.run(@game.target)
    if @game.player1.dead? || @game.player2.dead?
      redirect('/lose')
    else
      erb(:attack)
    end
  end

  post '/change_player' do
    @game.change_player
    redirect('/play')
  end

  get '/lose' do
    erb(:lose)
  end

end
