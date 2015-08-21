class TodolistsController < ApplicationController
    def index
        if !current_user.nil?
    	   @todolists = current_user.todolists.all
        else
            flash[:danger] = "Please Login To View Your Todolist"
            redirect_to login_path
        end
    end

    def destroy
    	current_user.todolists.find(params[:destroyid]).destroy
        flash[:success] = "Edit Successful"
        redirect_to todolists_path
    end

    def new   #Action to show form for creating table or adding content
    	@new_todolists = Todolist.new
    end

    def create #Action to actually perform creating table or adding content from form from new action
        current_user.todolists.create(todoitems: params[:todolist][:todoitems], 
                                      start: params[:todolist][:start],
                                      end: params[:todolist][:end])  
        flash[:success] = "New Item Added Successfully"
        redirect_to todolists_path
    end 

    def search
    	@todolistsearch = current_user.todolists.find(params[:searchid])
    end

    def show
        @todolistshow = current_user.todolists.find(params[:id])
    end

    def edit
        @todolistedit = current_user.todolists.find(params[:id])
    end

    def update
        @todolistedit = current_user.todolists.find(params[:id])
        @todolistedit.update(todoitems: params[:todolist][:todoitems], 
                             start: params[:todolist][:start],
                             end: params[:todolist][:end])
        flash[:success] = "Update Successful"
        redirect_to todolists_path
    end

    def follower
        @follower_name = User.find(params[:id]).account_name
        @follower_todolist = User.find(params[:id]).todolists

    end
    # def addcolumn
    #     add_column :todolists, :duration, :string
    #     redirect_to todolists_path
    # end
end