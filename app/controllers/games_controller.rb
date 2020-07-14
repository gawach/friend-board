class GamesController < ApplicationController
  before_action :set_game, only: [:destroy]
  before_action :require_user_logged_in, only: [:new, :create, :destroy]
  
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end
  
  def create
    @game = Game.new(game_params)
    if @game.save
      flash[:sucess] = 'ゲームが追加されました'
      redirect_to root_url
    else
      flash.new[:danger] = 'ゲームが追加されませんでした'
      render 'games/new'
    end
  end
  
  def destroy
    @game.destroy
    flash[:success] = 'ゲームタイトルを削除しました'
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
