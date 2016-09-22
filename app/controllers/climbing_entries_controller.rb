class ClimbingEntriesController < ApplicationController

 def new
   @profile = Profile.find(params[:profile_id])
   @climbing_entry = ClimbingEntry.new
 end

 def create
   @profile = Profile.find(params[:profile_id])
   @climbing_entry = @profile.climbing_entries.new(entry_params)
   if @climbing_entry.save
     flash[:notice] = "This climbing entry has been saved!"
     redirect_to profile_path(@profile)
   else
     flash[:alert] = "This climbing entry did not save!"
     redirect_to new_profile_climbing_entry_path(@profile)
   end
 end

  private
  def entry_params
    params.require(:climbing_entry).permit(:notes, :climbing_style, :location, :date, :time)
  end

end
