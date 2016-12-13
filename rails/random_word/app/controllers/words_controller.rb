class WordsController < ApplicationController
	def index
		@count = 0
		@word = ''
		render 'index'
	end
	def gen
		if session[:count]
			session[:count] += 1
		else
			session[:count] = 1
		end
		@count = session[:count]
		@word = ''
		for i in (0..13)
			bar = rand
			if (bar < 0.4)
				j = rand(97..122)
				@word << [j.floor].pack('U*')
			elsif (bar < 0.8)
				j = rand(65..90)
				@word << [j.floor].pack('U*')
			else
				@word << rand(48..57)
			end
		end
		render 'index'
	end
end
