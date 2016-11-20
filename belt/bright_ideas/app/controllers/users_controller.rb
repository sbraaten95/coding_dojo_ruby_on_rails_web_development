class UsersController < ApplicationController
	def index
		@user = User.new
		render 'index'
	end
	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to '/bright_ideas'
		else
			flash[:errors] = @user.errors.full_messages
			redirect_to :back
		end
	end
	def login
		@user = User.find_by_email(params[:email])

	    if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to '/bright_ideas'
	    else
			flash[:errors] = ['Invalid combination']
			redirect_to :back
	    end
	end

	private
    def user_params
      params.require(:user).permit(:name, :alias, :email, :password, :confirmation)
    end
end
