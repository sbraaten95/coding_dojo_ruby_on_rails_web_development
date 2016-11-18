class SecretsController < ApplicationController
	before_action :require_login, only: [:index, :create, :destroy]

	def index
		render 'index'
	end
	def create
		@user = User.find(session[:user_id])
		Secret.create(content:params[:secret], user:@user)

		redirect_to @user
	end
	def destroy
		@secret = Secret.find(params[:id])
		@secret.destroy if @secret.user == current_user

		redirect_to User.find(current_user.id)
	end
end
