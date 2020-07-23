class ProfilesController < ApplicationController
  before_action :require_user_logged_in
  before_action :set_profile, only: [:show, :destroy]
  
  def index
    @profiles = Profile.all
  end
  
  def show
  end
  
  def new
    @profile = Profile.new
  end
  
  def create
    @profile = Profile.new(profile_params)
    
    if @profile.save
      flash[:success] = 'プロフィールを作成しました'
      redirect_to user_profiles_path
    else
      flash.now[:danger] = 'プロフィールの作成に失敗しました'
      render :new
    end
  end
  
  def destroy
    @profile.destroy
    flash.now[:danger] = 'プロフィールを削除しました'
    redirect_to user_profiles_path
  end
  
  private
  
    def set_profile
      @profile = Profile.find_by(id: params[:id])
    end
    
    def profile_params
      params.require(:profile).permit(:game_title, :online_code, :current_rank, :best_rank, :favorite_character, :frequency, :enjoy, :user_id)
    end
  
end
