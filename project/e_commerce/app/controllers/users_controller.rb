class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
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
	    	session[:user_id] = @user.id
	    	redirect_to @user
	    else
	      flash[:errors] = @user.errors.full_messages
	      redirect_to :back
	    end
	end
	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to @user
		else
			render 'edit'
		end
	end
	def destroy
		@user = User.find(params[:id])
	  	@user.destroy
	  	reset_session

	  	redirect_to '/sessions/new'
	end

	private
	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
