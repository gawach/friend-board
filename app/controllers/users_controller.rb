class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:index, :show]
  before_action :set_user, only: [:show]
  
  def index
    @users = User.order(id: :desc).page(params[:page]).per(25)
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:success] = 'ユーザーの登録に成功しました'
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザーの登録に失敗しました'
      render :new
    end
  end
  
  private
    #Strong Parameter
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
    def set_user
      @user = User.find_by(id: params[:id])
    end
  
end
