class PhotosController < ApplicationController
	def show
		@photo = Photo.find(params[:id])
	end
	def show_modal
		@photo = Photo.find(params[:id])
		respond_to do |format|
			format.js {render 'show_modal'}
		end
	end
end
