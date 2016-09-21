class UsersController < ApplicationController

  after_create :make_profile

  def make_profile
    self.profile = Profile.new
    self.save
  end

  # def new
  #   redirect_to new_user_registration_path
  # end
  #
  # def create
  #   redirect_to new_profile_path
  # end

end
