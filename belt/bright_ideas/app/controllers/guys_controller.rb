class GuysController < ApplicationController
	def index
		@guy = Guy.new
		render 'index'
	end
	def create
		@guy = Guy.new(guy_params)
		if @guy.save
			session[:user_id] = @guy.id
			redirect_to '/bright_ideas'
		else
			flash[:errors] = @guy.errors.full_messages
			redirect_to :back
		end
	end
	def login
		@guy = Guy.find_by_email(params[:email])

	    if @guy && @guy.authenticate(params[:password])
			session[:user_id] = @guy.id
			redirect_to '/bright_ideas'
	    else
			flash[:errors] = ['Invalid combination']
			redirect_to :back
	    end
	end

	private
    def guy_params
      params.require(:guy).permit(:name, :alias, :email, :password, :password_confirmation)
    end
end
