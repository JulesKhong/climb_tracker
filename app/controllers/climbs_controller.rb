class ClimbsController < ApplicationController

  def new
    @profile = current_user.profile
    @climbing_entry = ClimbingEntry.find(params[:climbing_entry_id])
    @climb = Climb.new
  end

  def create
    @profile = current_user.profile
    @climbing_entry = ClimbingEntry.find(params[:climbing_entry_id])
    @climb = @climbing_entry.climbs.new(climb_params)
    if @climb.save
      flash[:notice] = "This climb has been saved!"
      redirect_to profile_path(@profile)
    else
      flash[:alert] = "This climb did not save!"
      redirect_to new_climbing_entry_climb_path(@climbing_entry)
    end
  end

private
  def climb_params
    params.require(:climb).permit(:height, :rating)
  end

end
