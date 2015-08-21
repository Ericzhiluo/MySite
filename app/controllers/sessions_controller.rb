class SessionsController < ApplicationController
	def new

	end

	def create
		user = User.find_by(account_name: params[:session][:account_name].downcase)
		
		if user && user.authenticate(params[:session][:password])
			flash.now[:danger] = "Log in succussful" 
			session[:user_id] = user.id
			redirect_to todolists_path
		else
			flash.now[:danger] = "Invalid email/password combination"
			render 'new'
		end
	end

	def destroy
		session.delete(:user_id)
   		@current_user = nil
   		redirect_to pages_home_path
	end
end
