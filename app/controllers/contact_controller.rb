class ContactController < ApplicationController
	def create
		if UserMailer.with(params).contact_email.deliver_now
			redirect_to root_path, :flash => { :notice => "Thank you!  We'll chat soon." }
		end
	end
end