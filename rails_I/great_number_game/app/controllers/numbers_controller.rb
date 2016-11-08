class NumbersController < ApplicationController
	def index
		session[:number] = rand(1..100)
	end
	def guess
		guess = params[:guess].to_i
		if guess == session[:number]
			@result = 'correct'
			@number = session[:number]
			session[:number] = rand(1..100)
			render 'index'
		elsif guess > session[:number]
			@result = 'high'
			render 'index'
		elsif guess < session[:number]
			@result = 'low'
			render 'index'
		end
	end
end
