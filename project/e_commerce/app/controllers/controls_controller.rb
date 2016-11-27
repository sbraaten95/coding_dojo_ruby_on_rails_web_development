class ControlsController < ApplicationController
	def index
		@products = Product.all
	end
	def login
		render 'log_in'
	end
	def confirm_login
		@user = User.find_by_email(params[:email])

	    if @user && @user.authenticate(params[:password])
	        session[:user_id] = @user.id
	        if session[:prev_path] != nil
		        redirect_to session[:prev_path]
		    else
		    	redirect_to root_path
		    end
	    else
	        flash[:errors] = ['Invalid combination']
	        redirect_to logging_in_path
	    end
	end
	def logout
		reset_session
		redirect_to root_path
	end
	def add_to_cart
		@product = Product.find(params[:format])
		if current_user
			if session[:cart]
				session[:cart] << @product
			else
				session[:cart] = [@product]
			end
			flash[:errors] = ["#{@product.name} added to your cart!"]
			redirect_to :back
		else
			flash[:errors] = ['To add items to your cart, log in first!']
			session[:prev_path] = product_path(params[:format])
			redirect_to logging_in_path
		end
	end
	def go_to_cart
		render 'cart'
	end
	def check_out_cart
		session[:cart].each do |item|
			product = Product.find(item['id'])
			# current_user.update(price:(current_user.price - product.price))
			product.update(user:current_user)
		end
		redirect_to inventory_path
	end
	def show_inventory
		@products = Product.where(user:current_user)
		render 'inventory'
	end
end
