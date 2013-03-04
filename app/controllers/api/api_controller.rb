# controller for the API
class Api::ApiController < ApplicationController
   skip_filter :basic_authentication

   API_VERSION = '1.0'

	#adds email address to beta signup list
	def signup_beta_user()
		if(BetaSignUp.where(:emailAddress => params[:emailAddress]).exists?) 
			render_result({}, 500, "Email Address Already Signed Up")
		else 
			BetaSignUp.create(:emailAddress => params[:emailAddress]);

			render_result({}, 200, "OK")
		end
	end

	#get single application
	def applications()

	end

	# render a result in the appropriate format
	 def render_result(result = {}, status = 200, status_string = 'OK')
	  	return_value = {'version' => API_VERSION,
	  		'statusCode' => status,
	  		'statusString' => status_string,
	  		'result' => result}
	  		if params[:callback]
	  			render :text => "#{params[:callback]}(#{return_value.to_json});", :content_type => "application/javascript"
	  		elsif params[:isIEPhoto]
	  			render :text=> return_value.to_json, :content_type => "text/plain"
	  		else
	  			render :json => return_value.to_json
	  		end
	 end
end