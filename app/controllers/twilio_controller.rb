class TwilioController < ApplicationController
	def index

	end

	def create
		@number = params[:user][:phone]
		@body = params[:body]

		account_sid = 'AC0c09154772bac8cf4e1f2b0b26354c22'
		auth_token = '44222cfa59b302685bf6e8434efa3e00'

		@client = Twilio::REST::Client.new account_sid, auth_token

		message = @client.account.messages.create(
		:body => @body,
		:to => @number,
		:from => "+16177516055"
)

	end
end
