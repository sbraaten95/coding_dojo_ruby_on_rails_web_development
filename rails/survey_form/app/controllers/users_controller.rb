class UsersController < ApplicationController
	def index
		render 'index'
	end
	def results
		if session[:count]
			session[:count] += 1
		else
			session[:count] = 1
		end
		@count = session[:count]
		@user = params[:result]
		render 'result'
	end
end