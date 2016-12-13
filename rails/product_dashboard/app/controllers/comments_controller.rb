class CommentsController < ApplicationController
	def create
		@product = Product.find(params[:product_id])
		@comment = @product.comments.create(comment_params)
		redirect_to product_path(@product)
	end

	def all
		@comments = Comment.all
		render 'all'
	end

	private
	def comment_params
		params.require(:comment).permit(:comment)
	end
end
