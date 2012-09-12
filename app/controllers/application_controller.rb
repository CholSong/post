class ApplicationController < ActionController::Base
	protect_from_forgery
	private 
	def authenticate
	 authenticate_or_request_with_http_basic do |uid, pwd|
	 	uid == 'admin' && pwd == "mother"
	 end
	end
end
