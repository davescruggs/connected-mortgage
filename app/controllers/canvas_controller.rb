class CanvasController < ApplicationController
	def index
		client = Restforce.new(
			oauth_token: session['signed_request']['client']['oauthToken'],
			instance_url: session['signed_request']['client']['instanceUrl']
		)
		@contacts = client.query("select Id, Name from Contact Limit 10")
	end

	def auth
		# store all of the signed request data returned
		# by salesforce in the current user's session
		session[:signed_request] = Restforce.decode_signed_request(params[:signed_request],
																 ENV['OMNIAUTH_PROVIDER_SECRET'])

		redirect_to action: 'index'
	end
end
