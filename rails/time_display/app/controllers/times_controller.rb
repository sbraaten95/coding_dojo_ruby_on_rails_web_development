class TimesController < ApplicationController
	def main
		@time = Time.new
		render 'index'
	end
end
