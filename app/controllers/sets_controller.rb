class SetsController < ApplicationController

 def new
   @profile = Profile.find(params[:profile_id])
   @set = @profile.sets.new
 end

end
