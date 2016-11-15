class UsersController < ApplicationController
	def index
		render 'index'
	end
	def show
		@user = User.find(params[:id])
		render 'show'
	end
	def edit
		render 'edit'
	end
	def new
		@user = User.new
		render 'register'
	end
	def login
		@user = User.new
		render 'new'
	end
	def create
		@user = User.find_by_email(params[:user][:email])
		if @user
			if @user.authenticate(params[:user][:password])
				session[:user_id] = @user.id
				redirect_to @user
			else
				render 'error'
			end
		else
			render 'error'
		end
	end
	def switch
		redirect_to '/sessions/new'
	end
end
