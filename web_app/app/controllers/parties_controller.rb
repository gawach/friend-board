class PartiesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    board = Board.find(params[:board_id])
    current_user.join(board)
    flash[:success] = 'パーティに参加しました'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    board = Board.find(params[:board_id])
    current_user.unjoin(board)
    flash[:success] = '・・・。'
    redirect_back(fallback_location: root_path)
  end
end
