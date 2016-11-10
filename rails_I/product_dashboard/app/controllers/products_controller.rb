class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(params[:id])
  end

  def new
  	@product = Product.new
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def create
  	@product = Product.create(name:params[:product][:name], description:params[:product][:description], price:params[:product][:price], category:Category.find(params[:product][:category].to_i))
  	redirect_to @product
  end

  def update
  	@product = Product.find(params[:id])

  	puts params[:product][:name]

  	if @product.update(name:params[:product][:name], description:params[:product][:description], price:params[:product][:price], category:Category.find(params[:product][:category].to_i))
  		redirect_to @product
  	else
  		render 'edit'
  	end
  end

  def destroy
  	Product.destroy(params[:id])
  	redirect_to products_path
  end
end
