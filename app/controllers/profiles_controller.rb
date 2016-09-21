class ProfilesController < ApplicationController

  def index
    @user = current_user
    # @profile = Profile.find_by(current_user.id)
  end

  def new
    @profile = Profile.new
  end


end
