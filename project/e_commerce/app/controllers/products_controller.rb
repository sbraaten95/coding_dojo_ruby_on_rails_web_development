class ProductsController < ApplicationController
	def index
	end
	def show
		@product = Product.find(params[:id])
	end
	def new
		@product = Product.new
	end
	def edit
	end
	def create
		input = params[:product]
		puts input[:name]
		@product = Product.new(name:input[:name], desc:input[:desc], price:input[:price], user:current_user, photo:input[:photo])

		if @product.save
			redirect_to inventory_path
		else
			flash[:errors] = ["Something went wrong creating this new product: #{@product.inspect}"]
			redirect_to :back
		end
	end
	def update
	end
	def destroy
	end
end
