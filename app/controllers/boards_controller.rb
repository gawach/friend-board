class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :destroy]
  before_action :require_user_logged_in, only: [:show, :new, :create, :destroy]
  
  def index
    @boards = Board.all
    @game = Game.find(params[:game_id])
  end

  def show
  end

  def new
    @board = Board.new
    @game = Game.find(params[:game_id])
  end
  
  def create
    @board = Board.new(board_params)
    
    if @board.save
      flash[:success] = '投稿されました'
      redirect_to game_boards_path
    else
      flash.now[:danger] = '投稿されませんでした'
      render :new
    end
  end

  def edit
  end
  
  def destroy
    @board.destroy
    flash[:success] = '投稿が削除されました'
    redirect_to game_boards_path
  end
  
  
  private
  
    def set_board
      @board = Board.find_by(id: params[:id])
    end
    
    def board_params
      params.require(:board).permit(:target_rank, :recruit_number, :content, :game_id, :user_id)
    end
end
