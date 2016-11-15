class UsersController < ApplicationController
	def index
		render 'index'
	end
	def show
		render 'show'
	end
	def edit
		render 'edit'
	end
	def new
		render 'new'
	end
end
