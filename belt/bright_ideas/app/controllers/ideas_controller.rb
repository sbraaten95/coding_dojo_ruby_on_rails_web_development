class IdeasController < ApplicationController
	def index
		@user = Guy.find(session[:user_id])
		render 'index'
	end
	def create
		@user = Guy.find(session[:user_id])
		Idea.create(content:params[:idea], user:@user)

		redirect_to @user
	end
end
