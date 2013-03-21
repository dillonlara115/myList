class ProfilesController < ApplicationController
	#before_filter :authenticate_user!
  def show
  	@user = User.find_by_profile_name(params[:id])
  	if @user
  		@bands = @user.bands.all
  		render actions: :show
  	else
	  	render file: 'public/404', status: 404, formats: [:html]
	  end
  end
end