class ProfilesController < ApplicationController

  def index
    @profile = current_user.profile
    @user = current_user
  end

  def new
    @profile = Profile.new
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
    @user_id = User.find(@profile.user_id)
  end

  def update
    @profile = Profile.new(profile_params)
    if @profile.save
      flash[:notice] = "Your profile has been updated!"
      redirect_to profile_path(@profile)
    else
      flash[:alert] = "Your profile didn't update!"
      redirect_to edit_profile_path(@profile)
    end
  end



  private
  def profile_params
    params.require(:profile).permit(:username, :avatar, :user_id)
  end

end
