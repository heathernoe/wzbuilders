class SignupsController < ApplicationController
	def new
		@signup = Signup.new(signup_params)
	end
	
	private def signup_params
		params.permit(:email)
	end
	
	def create
		@signup = Signup.new(signup_params)
		if @signup.save
		  redirect_to root_path, :flash => { :notice => "Flash, snap...I've added you to the list!" }
		else
		  render 'new'
		end
	end
end
