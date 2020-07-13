class GamesController < ApplicationController
  before_action :set_game, only: [:show, :destroy]
  
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end
  
  def show
  end
  
  def create
    @game = Game.new(game_params)
    if @game.save
      flash[:sucess] = 'ゲームが追加されました'
      redirect_to root_url
    else
      flash.new[:danger] = 'タスクが追加されませんでした'
      render 'games/new'
    end
  end
  
  def destroy
    @game.destroy
    redirect_to root_url
  end
  
  private
    def set_game
      @game = Game.find_by(id: params[:id])
    end
    
    def game_params
      params.require(:game).permit(:title)
    end
end
