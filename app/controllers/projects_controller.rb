class ProjectsController < ApplicationController
	def index
		@projects = Project.all
		@services = Service.all
	end
	
	def show 
  	@project = Project.find(params[:id]) 
  	@photos = @project.photos
	end
	
	def thanks
	end
end
