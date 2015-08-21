class UsersController < ApplicationController
	def index
	end

	def new
		@new_user = User.new
	end

	def create
		@new_user = User.create(account_name: params[:user][:account_name],
			        email: params[:user][:email],
			        password: params[:user][:password],
			        password_confirmation: params[:user][:password_confirmation],)
		if @new_user.save
			session[:user_id] = @new_user.id
			flash.now[:success] = "Welcome to the Eric's Website!"
		else
			render 'new'
		end
	end

	def show
	end

	def search
		$search_result = User.find_by(account_name: params[:searchname])
		$search_result_id = $search_result.id
	end

	def follow
		u = User.find(current_user.id)
		Followeerelationship.create(user_id: current_user.id, 
									followee_id: $search_result_id)

		Followerrelationship.create(user_id: $search_result_id, 
									follower_id: current_user.id)

		flash[:success] = "Follow Successfully!"
		redirect_to user_path(current_user.id)
	end

	def unfollow
		Followeerelationship.where(user_id: current_user.id, followee_id: params[:id]).delete_all
	
		Followerrelationship.where(user_id: params[:id], follower_id: current_user.id).delete_all
		flash[:success] = "Unfollow Successfully!"
		redirect_to user_path(current_user.id)
	end

	# before_filter :common_content, only: [:follow, :unfollow, :show, :search]

	# def common_content
 #    	$search_result_id
 #    end

end
