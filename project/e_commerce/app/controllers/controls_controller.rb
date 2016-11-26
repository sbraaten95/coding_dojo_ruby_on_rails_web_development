class ControlsController < ApplicationController
	def login
		render 'log_in'
	end
	def processlogin
		@user = User.find_by_email(params[:email])
		
	    if @user && @user.authenticate(params[:password])
	        session[:user_id] = @user.id
	        redirect_to @user
	    else
	        flash[:errors] = ['Invalid combination']
	        redirect_to sessions_new_path
	    end
	end
end
