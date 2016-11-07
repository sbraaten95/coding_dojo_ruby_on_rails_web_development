class UsersController < ApplicationController
	def index
		render json: User.all
	end
	def show
		render json: User.find(params[:id])
	end
	def new
		@user = User.new
	end
	def edit
		@user = User.find(params[:id])
	end
	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to '/users'
		else
			render 'new'
		end
	end
	def total
		render text: User.all.count
	end
	private
	def user_params
		params.require(:user).permit(:name)
	end
end
