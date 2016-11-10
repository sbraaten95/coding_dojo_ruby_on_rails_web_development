class RpgController < ApplicationController
	def index
		session[:inputs] = []
		if not session[:gold]
			session[:gold] = 0
		end
		@gold = session[:gold]
		render 'index'
	end
	def farm
		acquired = rand(10..20)
		session[:gold] += acquired
		@gold = session[:gold]
		session[:inputs].push("You just got #{acquired} gold!")
		render 'index'
	end
	def cave
		acquired = rand(5..10)
		session[:gold] += acquired
		@gold = session[:gold]
		session[:inputs].push("You just got #{acquired} gold!")
		render 'index'
	end
	def house
		acquired = rand(2..5)
		session[:gold] += acquired
		@gold = session[:gold]
		session[:inputs].push("You just got #{acquired} gold!")
		render 'index'
	end
	def casino
		acquired = rand(-50..50)
		session[:gold] += acquired
		@gold = session[:gold]
		session[:inputs].push("You just got #{acquired} gold!")
		render 'index'
	end	
end
