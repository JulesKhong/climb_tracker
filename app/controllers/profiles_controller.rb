class ProfilesController < ApplicationController

  def index
    @profile = current_user.profile
    @user = current_user
  end

  def new
    @profile = Profile.new
  end

  def show
    @profile = current_user.profile
  end


end
