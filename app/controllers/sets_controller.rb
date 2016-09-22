class SetsController < ApplicationController

 def new
   @profile = Profile.find(params[:profile_id])
   binding.pry
   @set = @profile.sets.new
 end

end
