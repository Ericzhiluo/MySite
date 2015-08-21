module SessionsHelper
	def current_user
		#assign value to variable if it is empty or else equal to itself
    	@current_user ||= User.find_by(id: session[:user_id])
    end
end
