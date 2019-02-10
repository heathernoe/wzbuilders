class UserMailer < ApplicationMailer
	def contact_email
		@recipient = "wzbuilder1@gmail.com"
		@message = params[:message]
		@sender = params[:sender]
		@email = params[:email]
		@phone = params[:phone]
		mail(to: @recipient, subject: 'Dzien Dobry!')
	end
end  